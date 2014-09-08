# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   jloya

module.exports = (robot) ->
  robot.hear /business/i, (msg) ->
    msg.send "That's LORD BUSINESS"
