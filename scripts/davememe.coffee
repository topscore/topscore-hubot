# Description:
#   Delighted Dave meme
#
# Dependencies:
#   None
#
# Commands:
#   hubot davememe <memetop>; <memebottom>
#
# Author:
#   grin

memeize = (str) -> encodeURIComponent(str.trim().replace(new RegExp(' ', 'g'), '_').replace(new RegExp('%', 'g'), '%%'))

module.exports = (robot) ->
  robot.respond /davememe (.+?)\;(.+)$/i, (msg) ->
    top = memeize(msg.match[1])
    bottom = memeize(msg.match[2])
    msg.send "http://memeifier.com/#{top}/#{bottom}/http:/i.imgur.com/nleL9Ue.jpg"
