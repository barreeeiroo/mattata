local hextorgb = {}
local mattata = require('mattata')

function hextorgb:init(configuration)
	hextorgb.arguments = 'hextorgb <colour hex>'
	hextorgb.commands = mattata.commands(self.info.username, configuration.commandPrefix):command('hextorgb').table
	hextorgb.help = configuration.commandPrefix .. 'hextorgb <colour hex> - Converts the given colour hex to its RGB format.'
end

function hextorgb:onMessage(message)
	local input = mattata.input(message.text)
	if not input then
		mattata.sendMessage(message.chat.id, hextorgb.help, nil, true, false, message.message_id)
		return
	end
	input = input:gsub('#', '')
	if tonumber('0x' .. input:sub(1, 2)) == nil or tonumber('0x' .. input:sub(3, 4)) == nil or tonumber('0x' .. input:sub(5, 6)) == nil then
		mattata.sendMessage(message.chat.id, hextorgb.help, nil, true, false, message.message_id)
		return
	end
	local res = mattata.sendPhoto(message.chat.id, 'https://placeholdit.imgix.net/~text?txtsize=1&bg=' .. input .. '&w=150&h=200', 'rgb(' .. tonumber('0x' .. input:sub(1, 2)) .. ', ' .. tonumber('0x' .. input:sub(3, 4)) .. ', ' .. tonumber('0x' .. input:sub(5, 6)) .. ')', false, message.message_id)
	if not res then mattata.sendMessage(message.chat.id, hextorgb.help, nil, true, false, message.message_id) return end
end

return hextorgb