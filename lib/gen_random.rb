# https://gist.github.com/pjc0247/5090169

def generate_random_string(length = 8)
  buffer = String.new
 
  for i in 0..length
    rnd = rand(26 + 26 + 10)
 
    case rnd
      when 0..25
        buffer << (rand(26) + 'a'.ord).chr
      when 26..52
        buffer << (rand(26) + 'A'.ord).chr
      else
        buffer << (rand(10) + '0'.ord).chr
    end
  end
 
  return buffer
end