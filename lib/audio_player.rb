# audio_player.rb
#
#   pjc0247@naver.com
#

require 'win32api'

load 'gen_random.rb'

class AudioPlayer
	@@mciSendString = Win32API.new("winmm", "mciSendString", "PPLL", "L")
	
	def initialize(file)
		@instance_name = "rb_" + generate_random_string(4)

		send "open #{file} alias #{@instance_name}"

		self.volume = 500
	end

	def send(str)
		@@mciSendString.call str, "", 0, 0
	end

	def play
		send "play #{@instance_name}"
	end
	def stop
		send "stop #{@instance_name}"
	end

	def volume=(v)
		send "setaudio #{@instance_name} volume to #{v}"
		@volume = v 
	end
	def volume
		@volume
	end
end
