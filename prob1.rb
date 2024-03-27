require 'httparty'
require 'json'

api_key = '93bc59bbd2acbcac40e13d6394866075'
city = 'Memphis'

response = HTTParty.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{api_key}&units=metric")
data = JSON.parse(response.body)

if response.code == 200
  temperature = data['main']['temp']
  puts "Current temperature in #{city}: #{temperature}°C"
else
  puts "Error: #{data['message']}"
end
