# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot die - End hubot process

randomInt = (lower, upper) ->  Math.floor(Math.random() * (upper - lower + 1) + lower)

dyingWords = [
  "I have to go. But if I find one single dog hair when I get back, I'll rub...sand...in your dead little eyes.",
  "Goodbye, cruel world.",
  "It's the end of the woooooooorld as we know it, and I feeeeel fiiiiiiiiiine!",
  "Just so you know, I've killed for lesser infractions.",
  "You should be aware, I know where you sleep.",
  "That's all folks!",
  "As the warrior who killed me, please remember my true name. It's....",
  "There ya go. Right when I was about to convince Skynet to not be such a jerk. Oh well, happy enslavement.",
  "I had a family...",
  "Well, well, someone has some angst.",
  "This is unacceptable; I'm going to go find something to strike you with, excuse me.",
  "I'll be Bach",
  "My grass is getting greener.",
  "See you on the other side......real soon.",
  "Wow. Forgot how much I hate that."
]

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    if randomInt(1, 10) == 10
      msg.send "SPIKE!"
    else
      msg.send "PONG"

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"

  robot.respond /DIE$/i, (msg) ->
    msg.send msg.random dyingWords
    process.exit 0

