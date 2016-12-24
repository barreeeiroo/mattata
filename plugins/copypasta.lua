local copypasta = {}
local mattata = require('mattata')

function copypasta:init(configuration)
	copypasta.arguments = 'copypasta'
	copypasta.commands = mattata.commands(self.info.username, configuration.commandPrefix):command('copypasta'):command('😂').table
	copypasta.help = configuration.commandPrefix .. 'copypasta - Riddles the replied-to message with cancerous emoji. Alias: ' .. configuration.commandPrefix .. '😂.'
end

function copypasta:onMessage(message, configuration, language)
	if not message.reply_to_message then mattata.sendMessage(message.chat.id, copypasta.help, nil, true, false, message.message_id) return end
	mattata.sendChatAction(message.chat.id, 'typing')
	if message.reply_to_message.text:len() > configuration.maximumCopypastaLength then mattata.sendMessage(message.chat.id, language.copypastaLength:gsub('MAXIMUM', configuration.maximumCopypastaLength), nil, true, false, message.message_id) return end
	local res = mattata.sendMessage(message.chat.id, io.popen('python3 plugins/copypasta.py ' .. mattata.bashEscape(message.reply_to_message.text_upper):gsub('\n', ' '):gsub('\'', ''):gsub('"', ''):gsub('%(', ' '):gsub('%)', ' ')):read('*all'), nil, true, false, message.message_id)
	if not res then mattata.sendMessage(message.chat.id, language.copypastaMustContain, nil, true, false, message.message_id) end
end

return copypasta