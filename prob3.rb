require 'httparty'
require 'json'

api_key = 'OELYBA6VSXCDVQOTKPWC'
event_id = '873038440477'

response = HTTParty.get("https://www.eventbriteapi.com/v3/events/#{event_id}/?expand=venue&token=#{api_key}")
data = JSON.parse(response.body)


event_name = data['name']['text']
venue_name = data['venue']['name']
venue_address = data['venue']['address']['localized_address_display']
start_time = data['start']['local']

puts "Event: #{event_name}"
puts "Venue: #{venue_name}"
puts "Address: #{venue_address}"
puts "Start Time: #{start_time}"
