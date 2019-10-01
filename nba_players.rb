require "httparty"
require "json"

response = HTTParty.get("https://www.balldontlie.io/api/v1/players/")

data = JSON.parse(response.body)
data = data["data"]
# p data

for players in data
    p "#{players["first_name"]} #{players["last_name"]}, #{players["team"]["full_name"]}"
end