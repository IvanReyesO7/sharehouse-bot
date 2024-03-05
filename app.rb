require 'yaml'
require_relative "linebot"

## Opens and loads both of the yaml files
teams = YAML.load_file('./teams.yml')
current_team = teams[0]
members = YAML.load_file('./members.yml')[current_team]
message = "This week, it's #{current_team} team's turn for cleaning! (#{members.join(', ')}) がんばろうー！"

## Open and rewrite the teams yaml file.
teams.insert(-1, teams.delete_at(0))
File.open("./teams.yml", 'w') { |f| YAML.dump(teams, f) }

## Runs the bot with the custom message
LineBot.post_message(message)
