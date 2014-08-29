# Description:
#   Hubot got your back
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   back me up - replies with "I've got your back"
#
# Author:
#   jloya

moralSupport = [
  "I've got your back, %",
  "I agree with %",
  "Yeah, I'm with %",
  "% all the way",
  "% has the skills to pay the bills",
  "I would vote for you, %"
]

module.exports = (robot) ->
  robot.hear /back me up/i, (msg) ->
    support = msg.random moralSupport
    msg.send support.replace "%", msg.message.user.name
