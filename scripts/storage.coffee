# Description:
#   Inspect the data in redis easily
#
# Commands:
#   hubot show users - Display all users that hubot knows about
#   hubot show storage - Display the contents that are persisted in the brain


Util = require "util"

module.exports = (robot) ->
  robot.respond /show storage$/i, (msg) ->
    @robot.logger.info "Show storage called by: #{msg.message.user.name}"
    if (msg.message.user.name != 'jloya3')
      brain_data = robot.brain.data
      brain_data.history = []
      msg.send Util.inspect(brain_data, false, 4)
    else
      output = Util.inspect(robot.brain.data, false, 4)
      msg.send output

  robot.respond /show users$/i, (msg) ->
    response = ""

    for own key, user of robot.brain.data.users
      response += "#{user.id} #{user.name}"
      response += " <#{user.email_address}>" if user.email_address
      response += "\n"

    msg.send response

