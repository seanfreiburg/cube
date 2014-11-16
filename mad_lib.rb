require 'net/http'

while 1
  sleep(2)
  prng = Random.new
  command_id =  1
  uri = URI("http://0.0.0.0:3000/user/1/command_id/#{command_id}.json")
  puts Net::HTTP.get(uri)

  command_id =  prng.rand(1..4)
  uri = URI("http://0.0.0.0:3000/user/2/command_id/#{command_id}.json")
  puts Net::HTTP.get(uri)



end