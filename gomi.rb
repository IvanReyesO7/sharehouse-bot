require_relative "linebot"

message = "Today is pet bottle, can, and bottle day!♻️"

#Sends message when script is ran.
LineBot.post_message(message)