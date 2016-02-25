# Description:
#   Says whatever you want it to
#
# Dependencies:
#   None
#
# Commands:
#   hubot say <text> - Make hubot say the text
#
# Author:
#   lyoshenka

module.exports = (robot) ->
  robot.respond /say (.*)$/i, (msg) ->
    msg.send msg.match[1]
