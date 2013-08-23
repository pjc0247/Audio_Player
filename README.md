AudioPlayer
===========

Audio player module for Ruby / Windows

Using Windows Media Control Interface API, No compilation required.


Installation
-----------
    gem install audio_player

Examples
-----------

    require 'audio_player'
    
    bgm = AudioPlayer.new("bgm.mp3")
    bgm.play
    
    bgm.volume = 200  #0 ~ 1000
    
    bgm.stop
    
Author
----------
- pjc0247@naver.com
