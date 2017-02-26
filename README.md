# mattata

mattata is a powerful, plugin-based Telegram bot similar to [topkecleon's](https://github.com/topkecleon/otouto). mattata boasts many nifty features such as a fully-fledged administration plugin, AI (native Cleverbot implementation, which utilises my [mattata-ai](https://github.com/wrxck/mattata-ai) library) and much more.

## Setup

Installing & configuring mattata is very simple.

Clone the repository using:

```Bash
git clone https://github.com/wrxck/mattata
```

in Terminal. Then, run the following:

```Bash
cd mattata/
chmod +x ./install.sh
./install.sh
chmod +x ./launch.sh
```

You'll need sudo access to be able to install the dependencies required. Then, you need to fill in the values in `configuration.lua`. After you've done that, use:

```Bash
./launch.sh
```

to run your bot.

## Plugins

mattata features an extensive, robust plugin system, similar to [topkecleon's](https://github.com/topkecleon/otouto). Below is a table containing a list of currently-documented plugins and their corresponding usage information.

| Command                     | Description                                                                                                                                                                                                                                                                                                                                                                                                                                    | Aliases          | Flag |
|-----------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------|------|
| `/administration`           | Configure the administration settings for your chat through an interactive menu sent via private message.                                                                                                                                                                                                                                                                                                                                      | /antispam        | 2    |
| `/apod [dd/mm/yyyy]`        | Sends the Astronomy Picture of the Day via NASA's API. If a date is given, the Astronomy Picture for that date is returned.                                                                                                                                                                                                                                                                                                                    | -                | 1    |
| `/appstore <query>`         | Displays information about the first app returned by iTunes for the given search query.                                                                                                                                                                                                                                                                                                                                                        | /app             | 1    |
| `/avatar <user>`            | Sends the profile photos of the given user, of which can be specified by username or numerical ID. If an offset is given after the username (which must be a numerical value), then the nth profile photo is sent (if available).                                                                                                                                                                                                              | -                | 1    |
| `/ban [user]`               | Bans a user from the group. The user must be specified by username/ID, or by reply.                                                                                                                                                                                                                                                                                                                                                            | -                | 2    |
| `/base64 <text>`            | Converts a string of text into base64-encoded text.                                                                                                                                                                                                                                                                                                                                                                                            | /b64             | 1    |
| `/bash <snippet>`           | Executes a snippet of Bash on the host server, and returns the result.                                                                                                                                                                                                                                                                                                                                                                         | -                | 4    |
| `/binary <text>`            | Converts a numerical value into binary.                                                                                                                                                                                                                                                                                                                                                                                                        | /bin             | 1    |
| `/bing <query>`             | Searches Bing for the given search query and returns the top results.                                                                                                                                                                                                                                                                                                                                                                          | -                | 1    |
| `/blacklist [user]`         | Prevents a user from using the bot in the chat. The user must be specified by username/ID, or by reply.                                                                                                                                                                                                                                                                                                                                        | -                | 2    |
| `/bugreport <text>`         | Reports a bug to the configured developer.                                                                                                                                                                                                                                                                                                                                                                                                     | /bug, /br        | 1    |
| `/calc <expression>`        | Solves the given mathematical expression using mathjs.org.                                                                                                                                                                                                                                                                                                                                                                                     | -                | 1    |
| `/canitrust <url>`          | Reveals any known security issues with a website.                                                                                                                                                                                                                                                                                                                                                                                              | -                | 1    |
| `/catfact`                  | Sends a random, cat-themed fact.                                                                                                                                                                                                                                                                                                                                                                                                               | -                | 1    |
| `/cat`                      | Sends a random photo of a cat.                                                                                                                                                                                                                                                                                                                                                                                                                 | /sarah           | 1    |
| `/channel <channel>`        | Sends a message to a Telegram channel/group. The channel/group can be specified via ID or username. Messages can be formatted with Markdown. Users can only send messages to channels/groups they own and/or administrate.                                                                                                                                                                                                                     | /ch, /msg        | 2    |
| `/chuck`                    | Sends a random Chuck Norris joke.                                                                                                                                                                                                                                                                                                                                                                                                              | -                | 1    |
| `/clickbait`                | Generates a random, click-bait article headline.                                                                                                                                                                                                                                                                                                                                                                                               | -                | 1    |
| `/coinflip [guess]`         | Flips a coin and returns the result! If a guess is given, the result is tested against it and reveals the accuracy accordingly.                                                                                                                                                                                                                                                                                                                | /cf              | 1    |
| `/copypasta`                | Riddles the replied-to message with cancerous emoji.                                                                                                                                                                                                                                                                                                                                                                                           | /??              | 1    |
| `/counter`                  | Adds a view count to the replied-to message.                                                                                                                                                                                                                                                                                                                                                                                                   | /count           | 1    |
| `/currency <amount>`        | Converts exchange rates for various currencies via Google Finance.                                                                                                                                                                                                                                                                                                                                                                             | /convert, /cash  | 1    |
| `/demod [user]`             | Strip a user of their moderator status, revoking their ability to use administrative commands such as /ban, /kick and /unban. The user must be specified by username/ID, or by reply.                                                                                                                                                                                                                                                          | /demote          | 3    |
| `/developer`                | Connect with the developer through his social media.                                                                                                                                                                                                                                                                                                                                                                                           | /dev             | 1    |
| `/dice <number>`            | Rolls a die - returning random numbers between 1 and the given range the given number of times.                                                                                                                                                                                                                                                                                                                                                | -                | 1    |
| `/dictionary <word>`        | Looks up the given word in the Oxford Dictionary and returns the relevant definition(s).                                                                                                                                                                                                                                                                                                                                                       | /define          | 1    |
| `/dns <url>`                | Sends the given URL's DNS records of the given type. The record types currently supported are AAAA, A, CERT, CNAME, DLV, IPSECKEY, MX, NS, PTR, SIG, SRV and TXT.                                                                                                                                                                                                                                                                              | -                | 1    |
| `/doge <text>`              | Doge-ifies the given text. Sentences are separated using slashes. Example: /doge hello world/this is a test sentence/make sure you type like this/else it won't work!                                                                                                                                                                                                                                                                          | /dogify          | 1    |
| `/doggo`                    | Sends a random photo of a dog.                                                                                                                                                                                                                                                                                                                                                                                                                 | /dog, /josh      | 1    |
| `/donate`                   | Make an optional, monetary contribution to the mattata project.                                                                                                                                                                                                                                                                                                                                                                                | -                | 1    |
| `/duckduckgo <query>`       | Searches DuckDuckGo's instant results for the given search query and returns the most relevant result.                                                                                                                                                                                                                                                                                                                                         | /ddg             | 1    |
| `/echo <text>`              | Repeats the given string of text.                                                                                                                                                                                                                                                                                                                                                                                                              | -                | 1    |
| `/eightball`                | Makes a decision for you using the (virtual) magic 8 ball!                                                                                                                                                                                                                                                                                                                                                                                     | /8ball           | 1    |
| `/exec <language>`          | Executes the specified code in the given language and returns the output.                                                                                                                                                                                                                                                                                                                                                                      | -                | 1    |
| `/facebook <username>`      | Sends the profile picture of the given Facebook user.                                                                                                                                                                                                                                                                                                                                                                                          | /fb              | 1    |
| `/fact`                     | Returns a random (and somewhat-false!) fact.                                                                                                                                                                                                                                                                                                                                                                                                   | -                | 1    |
| `/flickr <query>`           | Searches Flickr for a photo matching the given search query and returns the most relevant result.                                                                                                                                                                                                                                                                                                                                              | -                | 1    |
| `/fortune`                  | Sends your fortune (featuring a seasonally-adjusting ASCII animal!).                                                                                                                                                                                                                                                                                                                                                                           | -                | 1    |
| `/frombin <binary>`         | Converts the given string of binary to a numerical value.                                                                                                                                                                                                                                                                                                                                                                                      | -                | 1    |
| `/gif <query>`              | Searches GIPHY for the given search query and returns a random, relevant result.                                                                                                                                                                                                                                                                                                                                                               | /giphy           | 1    |
| `/github <user>`            | Returns information about the specified GitHub repository.                                                                                                                                                                                                                                                                                                                                                                                     | /gh              | 1    |
| `/githubfeed <sub/del>`     | Manage your subscriptions to updates from GitHub repositories.                                                                                                                                                                                                                                                                                                                                                                                 | /ghfeed          | 1    |
| `/google <query>`           | Searches Google for the given search query and returns the most relevant result(s).                                                                                                                                                                                                                                                                                                                                                            | /g               | 1    |
| `/hackernews`               | Sends the top stories from Hacker News.                                                                                                                                                                                                                                                                                                                                                                                                        | /hn              | 1    |
| `/help `                    | A help-orientated menu with a sleep inline keyboard for navigation.                                                                                                                                                                                                                                                                                                                                                                            | /start           | 1    |
| `/hexadecimal <text>`       | Converts the given string of text into hexadecimal.                                                                                                                                                                                                                                                                                                                                                                                            | /hex             | 1    |
| `/hextorgb <hex code>`      | Converts the given hex colour code into its RGB format.                                                                                                                                                                                                                                                                                                                                                                                        | /hrgb            | 1    |
| `/id [chat]`                | Sends information about the given chat. Input is also accepted via reply.                                                                                                                                                                                                                                                                                                                                                                      | /whoami          | 1    |
| `/identicon <text>`         | Generates an identicon from the given string of text.                                                                                                                                                                                                                                                                                                                                                                                          | /icon            | 1    |
| `/imdb <query>`             | Searches IMDb for the given search query and returns the most relevant result(s).                                                                                                                                                                                                                                                                                                                                                              | -                | 1    |
| `/instagram <username>`     | Sends the profile picture of the given Instagram user.                                                                                                                                                                                                                                                                                                                                                                                         | /ig              | 1    |
| `/insult`                   | Generates a random insult.                                                                                                                                                                                                                                                                                                                                                                                                                     | -                | 1    |
| `/isp <url>`                | Sends information about the given URL's Internet Service Provider (ISP).                                                                                                                                                                                                                                                                                                                                                                       | -                | 1    |
| `/ispwned <account>`        | Returns the existence of the given account in any major data leaks.                                                                                                                                                                                                                                                                                                                                                                            | -                | 1    |
| `/isup <url>`               | Checks to see if the given URL is down for everyone or just you.                                                                                                                                                                                                                                                                                                                                                                               | -                | 1    |
| `/itunes <query>`           | Searches iTunes for the given search query and returns the most relevant result.                                                                                                                                                                                                                                                                                                                                                               | -                | 1    |
| `/jsondump`                 | Returns the raw JSON of your message.                                                                                                                                                                                                                                                                                                                                                                                                          | /json            | 1    |
| `/kick [user]`              | Bans, then unbans, a user from the chat (also known as a "soft-ban"). The user must be specified by username/ID, or by reply.                                                                                                                                                                                                                                                                                                                  | -                | 2    |
| `/lastfm [username]`        | Returns what you, or the given Last.fm user, last listened to on Last.fm.                                                                                                                                                                                                                                                                                                                                                                      | /np              | 1    |
| `/license`                  | View mattata's license.                                                                                                                                                                                                                                                                                                                                                                                                                        | -                | 1    |
| `/link`                     | Sends the group link.                                                                                                                                                                                                                                                                                                                                                                                                                          | -                | 1    |
| `/lmgtfy <query>`           | Sends a LMGTFY link for the given search query.                                                                                                                                                                                                                                                                                                                                                                                                | -                | 1    |
| `/location [query]`         | Sends your location, or a location from Google Maps.                                                                                                                                                                                                                                                                                                                                                                                           | /loc             | 1    |
| `/loremipsum`               | Generates a paragraph of Lorem Ipsum text.                                                                                                                                                                                                                                                                                                                                                                                                     | -                | 1    |
| `/lua <script>`             | Executes a snippet of Lua on the host server, and returns the result.                                                                                                                                                                                                                                                                                                                                                                          | -                | 4    |
| `/lyrics <query>`           | Finds the lyrics to the given track.                                                                                                                                                                                                                                                                                                                                                                                                           | -                | 1    |
| `/me <emote message>`       | Allows you to emote, Minecraft-style.                                                                                                                                                                                                                                                                                                                                                                                                          | -                | 1    |
| `/minecraft <username>`     | Sends information about the given Minecraft user.                                                                                                                                                                                                                                                                                                                                                                                              | /mc              | 1    |
| `/mod [user]`               | Promote the given user to moderator status, allowing them use of administrative commands such as /ban, /kick and /unban. The user must be specified by username/ID, or by reply.                                                                                                                                                                                                                                                               | /promote         | 3    |
| `/msglink`                  | Gets the link to the replied-to message.                                                                                                                                                                                                                                                                                                                                                                                                       | -                | 1    |
| `/name <text>`              | Changes the name that the bot's AI responds to.                                                                                                                                                                                                                                                                                                                                                                                                | -                | 2    |
| `/netflix <query>`          | Searches Netflix for the given search query and returns the most relevant result.                                                                                                                                                                                                                                                                                                                                                              | /nf              | 1    |
| `/news <source>`            | Sends the current top story from the given news source.                                                                                                                                                                                                                                                                                                                                                                                        | -                | 1    |
| `/ninegag`                  | Returns a random image from the latest 9gag posts.                                                                                                                                                                                                                                                                                                                                                                                             | /9gag            | 1    |
| `/nsources [query]`         | Returns a list of available sources that can be used with /news. If a query is given as a command argument, a Lua pattern match for the given query is made and a list of matching news sources is returned.                                                                                                                                                                                                                                   | -                | 1    |
| `/paste <text>`             | Uploads the given text to a pasting service and returns the result URL.                                                                                                                                                                                                                                                                                                                                                                        | -                | 1    |
| `/pay <amount>`             | Sends the replied-to user the given amount of mattacoins.                                                                                                                                                                                                                                                                                                                                                                                      | -                | 1    |
| `/plugins`                  | Toggle the plugins you want to use in your chat with a slick inline keyboard, paginated and neatly formatted.                                                                                                                                                                                                                                                                                                                                  | -                | 2    |
| `/pokedex <query>`          | Returns a Pokedex entry from pokeapi.co.                                                                                                                                                                                                                                                                                                                                                                                                       | /dex             | 1    |
| `/prime <number>`           | Tells you if a number is prime or not.                                                                                                                                                                                                                                                                                                                                                                                                         | -                | 1    |
| `/pun`                      | Generates a random pun.                                                                                                                                                                                                                                                                                                                                                                                                                        | -                | 1    |
| `/qr <text>`                | Converts the given string of text to a QR code.                                                                                                                                                                                                                                                                                                                                                                                                | /qrcode          | 1    |
| `/randomword`               | Generates a random word.                                                                                                                                                                                                                                                                                                                                                                                                                       | /rw              | 1    |
| `/reddit <subreddit/query>` | Returns the latest posts from the given subreddit, or for the given query.                                                                                                                                                                                                                                                                                                                                                                     | /r, /r/subreddit | 1    |
| `/remind <duration>`        | Repeats a message after a duration of time, in the format 1w2d3h4m. The maximum number of reminders at one time is 4 per chat, and each reminder must be between 1 minute and 4 weeks in duration. Reminders cannot be any more than 256 characters in length. Use /reminders to view your current reminders. An example use of this command would be: /remind 1w2d3h4m test, which would remind you in 1 week, 2 days, 3 hours and 4 minutes. | -                | 1    |
| `/rimg <width>`             | Sends a random image which matches the dimensions provided, in pixels. If only 1 dimension is given, the other is assumed to be the same. Append -g to the end of your message to return a grayscale photo, or append -b to the end of your message to return a blurred photo. The maximum value for each dimension is 5000, and the minimum for each is 250.                                                                                  | -                | 1    |
| `/rss <sub/del>`            | Manage your RSS feed subscriptions.                                                                                                                                                                                                                                                                                                                                                                                                            | -                | 2    |
| `/s/<pattern>`              | Replaces all occurences, of text matching a given Lua pattern, with the given substitution.                                                                                                                                                                                                                                                                                                                                                    | -                | 1    |
| `/setlang`                  | Allows you to select your language.                                                                                                                                                                                                                                                                                                                                                                                                            | -                | 1    |
| `/setloc <location>`        | Sets your location to the given value.                                                                                                                                                                                                                                                                                                                                                                                                         | -                | 1    |
| `/setnews <source>`         | Sets your preferred news source for use with /news.                                                                                                                                                                                                                                                                                                                                                                                            | -                | 1    |
| `/setsteam <text>`          | Sets your Steam username to the given text                                                                                                                                                                                                                                                                                                                                                                                                     | -                | 1    |
| `/setwelcome <text>`        | Sets the group's welcome message to the given text. Markdown formatting is supported.                                                                                                                                                                                                                                                                                                                                                          | -                | 2    |
| `/shorten <url>`            | Shortens the given URL using one of the given URL shorteners.                                                                                                                                                                                                                                                                                                                                                                                  | -                | 1    |
| `/shout <text>`             | Shouts the given text in multiple directions!                                                                                                                                                                                                                                                                                                                                                                                                  | -                | 1    |
| `/slap [target]`            | Slaps someone, or something.                                                                                                                                                                                                                                                                                                                                                                                                                   | -                | 1    |
| `/snapchat <username>`      | Sends the "Snap" code for the given Snapchat username.                                                                                                                                                                                                                                                                                                                                                                                         | /sc              | 1    |
| `/spotify <query>`          | Searches Spotify for a track matching the given search query and returns the most relevant result.                                                                                                                                                                                                                                                                                                                                             | -                | 1    |
| `/statistics`               | Shows statistical information about the current chat's top ten users (ordered by message count).                                                                                                                                                                                                                                                                                                                                               | /stats           | 1    |
| `/steam [username]`         | Displays information about the given Steam user. If no username is specified then information about your Steam account (if applicable) is sent.                                                                                                                                                                                                                                                                                                | -                | 1    |
| `/synonym <word>`           | Sends a word similar to the one given.                                                                                                                                                                                                                                                                                                                                                                                                         | -                | 1    |
| `/theme`                    | Get a theme for Telegram Desktop created by mattata's developer!                                                                                                                                                                                                                                                                                                                                                                               | -                | 1    |
| `/thoughts <query>`         | Discover what the Internet thinks about the given search query.                                                                                                                                                                                                                                                                                                                                                                                | -                | 1    |
| `/time [location]`          |                                                                                                                                                                                                                                                                                                                                                                                                                                                | -                | 1    |
| `/translate [locale]`       | If a locale is given, the given text is translated into the said locale's language. If no locale is given then the given text is translated into the bot's configured language. If the command is used in reply to a message containing text, then the replied-to text is translated and the translation is returned.                                                                                                                          | /tl              | 1    |
| `/twitch <query>`           | Searches Twitch for the given search query and returns the most relevant result(s).                                                                                                                                                                                                                                                                                                                                                            | -                | 1    |
| `/unicode <text>`           | Returns the given text as a JSON-encoded table of Unicode (UTF-32) values.                                                                                                                                                                                                                                                                                                                                                                     | -                | 1    |
| `/urbandictionary <query>`  | Searches the Urban Dictionary for the given search query and returns the most relevant result(s).                                                                                                                                                                                                                                                                                                                                              | /urban, /ud      | 1    |
| `/uuid`                     | Generates a random UUID.                                                                                                                                                                                                                                                                                                                                                                                                                       | /guid            | 1    |
| `/version`                  | Returns information about this instance of mattata.                                                                                                                                                                                                                                                                                                                                                                                            | /about           | 1    |
| `/weather [location]`       | If no arguments are given, the weather forecast for your known location is given. If a location is given, then the weather forecast for that location is given instead.                                                                                                                                                                                                                                                                        | -                | 1    |
| `/whitelist [user]`         | Allows a previously-blacklisted user to use the bot in the chat again. The user must be specified by username/ID, or by reply.                                                                                                                                                                                                                                                                                                                 | -                | 2    |
| `/whois <ip address>`       | Performs a WHOIS lookup for the given IP address and returns the result.                                                                                                                                                                                                                                                                                                                                                                       | -                | 1    |
| `/wikipedia <query>`        | Searches Wikipedia for the given search query and returns the most relevant article.                                                                                                                                                                                                                                                                                                                                                           | /wiki, /w        | 1    |
| `/xkcd [query]`             | Returns the latest xkcd strip and its alt text. If a number is given, returns that number strip. If 'r' is passed in place of a number, returns a random strip. Any other text passed as the command argument will search Google for a relevant strip and, if applicable, return it.                                                                                                                                                           | -                | 1    |
| `/yify <query>`             | Searches Yify Torrents for the given search query and returns the most relevant result(s).                                                                                                                                                                                                                                                                                                                                                     | -                | 1    |
| `/yomama`                   | Tells a Yo' Mama joke!                                                                                                                                                                                                                                                                                                                                                                                                                         | -                | 1    |
| `/youtube <query>`          | Searches YouTube for the given search query and returns the most relevant result(s).                                                                                                                                                                                                                                                                                                                                                           | /yt              | 1    |

Arguments enclosed in [square brackets] are optional, and arguments enclosed in are required.

You will notice there is a "Flag" column. This is a number which indicated what rights the user must have in order to use the corresponding command(s). Below is a table which explains what each number means:

| Flag | Name          | Description                                                                                                                                                                                                                                                                                       |
|------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1    | User          | All users are in this flag by default. It simply means they exist. This is the lowest flag.                                                                                                                                                                                                       |
| 2    | Moderator     | This flag contains all people of the moderator rank and higher. Moderators are non-official admins who have access to administrative commands, such as /ban, /kick and /unban. Moderators are granted this rank when an administrator replies to their message with /mod or /promote.             |
| 3    | Administrator | This flag contains all of the official group administrators. These are all of the people who have been promoted to an administrator by the creator of the group/channel. These people will have a star displayed next to their name in the member list on your client.                            |
| 4    | Owner         | This is a small category containing only the users who are in the `admins` array of the configuration.lua file. This rank means that the user has access to owner commands such as /bash and /lua, and can control the bot using /reload. This is the highest flag.                               |

All permissions levels are hereditary - meaning a user in flag 3 is also in flags 1 & 2.

## Telegram API

Below you will find each currently-documented method and its corresponding function and information.

### sendMessage

Use this function to send text messages using Telegram's `sendMessage` method.

```Lua
mattata.send_message(
    chat_id,
    text,
    parse_mode,
    disable_web_page_preview,
    disable_notification,
    reply_to_message_id,
    reply_markup
)
```

| Parameters                  | Type                                                                             | Required | Description                                                                                                                                                                    |
|-----------------------------|----------------------------------------------------------------------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| chat\_id                    | Integer or String                                                                | Yes      | Unique identifier for the target chat or username of the target channel (in the format @channelusername)                                                                       |
| text                        | String                                                                           | Yes      | Text of the message to be sent                                                                                                                                                 |
| parse\_mode                 | String                                                                           | Optional | Send `Markdown` or `HTML`, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in your bot's message.                                              |
| disable\_web\_page\_preview | Boolean                                                                          | Optional | Disables link previews for links in this message                                                                                                                               |
| disable\_notification       | Boolean                                                                          | Optional | Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.                                                |
| reply\_to\_message\_id      | Integer                                                                          | Optional | If the message is a reply, ID of the original message                                                                                                                          |
| reply\_markup               | InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply | Optional | Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user. |

### forwardMessage

Use this function to forward messages of any kind using Telegram's `forwardMessage` method.

```Lua
mattata.forward_message(
    chat_id,
    from_chat_id,
    disable_notification,
    message_id
)
```

| Parameters            | Type              | Required | Description                                                                                                                     |
|-----------------------|-------------------|----------|---------------------------------------------------------------------------------------------------------------------------------|
| chat\_id              | Integer or String | Yes      | Unique identifier for the target chat or username of the target channel (in the format @channelusername)                        |
| from\_chat\_id        | Integer or String | Yes      | Unique identifier for the chat where the original message was sent (or channel username in the format @channelusername)         |
| disable\_notification | Boolean           | Optional | Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound. |
| message\_id           | Integer           | Yes      | Message identifier in the chat specified in *from\_chat\_id*                                                                    |

### sendPhoto

Use this function to send photos using Telegram's `sendPhoto` method.

```Lua
mattata.send_photo(
    chat_id,
    photo,
    caption,
    disable_notification,
    reply_to_message_id,
    reply_markup
)
```

| Parameters             | Type                                                                             | Required | Description                                                                                                                                                                                                                              |
|------------------------|----------------------------------------------------------------------------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| chat\_id               | Integer or String                                                                | Yes      | Unique identifier for the target chat or username of the target channel (in the format @channelusername)                                                                                                                                 |
| photo                  | InputFile or String                                                              | Yes      | Photo to send. Pass a file\_id as String to send a photo that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a photo from the Internet, or upload a new photo using multipart/form-data. |
| caption                | String                                                                           | Optional | Photo caption (may also be used when resending photos by *file\_id*), 0-200 characters                                                                                                                                                   |
| disable\_notification  | Boolean                                                                          | Optional | Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.                                                                                                          |
| reply\_to\_message\_id | Integer                                                                          | Optional | If the message is a reply, ID of the original message                                                                                                                                                                                    |
| reply\_markup          | InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply | Optional | Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.                                                           |

### sendAudio

Use this function to send audio files using Telegram's `sendAudio` method, if you want Telegram clients to display them in the music player. Your audio must be in the `.mp3` format. Bots can currently send audio files of up to 50 MB in size, this limit may be changed in the future.

```Lua
mattata.send_audio(
    chat_id,
    audio,
    caption,
    duration,
    performer,
    title,
    disable_notification,
    reply_to_message_id,
    reply_markup
)
```

| Parameters             | Type                                                                             | Required | Description                                                                                                                                                                                                                                             |
|------------------------|----------------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| chat\_id               | Integer or String                                                                | Yes      | Unique identifier for the target chat or username of the target channel (in the format @channelusername)                                                                                                                                                |
| audio                  | InputFile or String                                                              | Yes      | Audio file to send. Pass a file\_id as String to send an audio file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get an audio file from the Internet, or upload a new one using multipart/form-data. |
| caption                | String                                                                           | Optional | Audio caption, 0-200 characters                                                                                                                                                                                                                         |
| duration               | Integer                                                                          | Optional | Duration of the audio in seconds                                                                                                                                                                                                                        |
| performer              | String                                                                           | Optional | Performer                                                                                                                                                                                                                                               |
| title                  | String                                                                           | Optional | Track name                                                                                                                                                                                                                                              |
| disable\_notification  | Boolean                                                                          | Optional | Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.                                                                                                                         |
| reply\_to\_message\_id | Integer                                                                          | Optional | If the message is a reply, ID of the original message                                                                                                                                                                                                   |
| reply\_markup          | InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply | Optional | Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.                                                                          |                                                                        |

### sendDocument

Use this function to send general files using Telegram's `sendDocument` method. Bots can currently send files of any type of up to 50 MB in size, this limit may be changed in the future.

```Lua
mattata.send_document(
    chat_id,
    document,
    caption,
    disable_notification,
    reply_to_message_id,
    reply_markup
)
```

| Parameters             | Type                                                                             | Required | Description                                                                                                                                                                                                                         |
|------------------------|----------------------------------------------------------------------------------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| chat\_id               | Integer or String                                                                | Yes      | Unique identifier for the target chat or username of the target channel (in the format @channelusername)                                                                                                                            |
| document               | InputFile or String                                                              | Yes      | File to send. Pass a file\_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. |
| caption                | String                                                                           | Optional | Document caption (may also be used when resending documents by *file\_id*), 0-200 characters                                                                                                                                        |
| disable\_notification  | Boolean                                                                          | Optional | Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.                                                                                                     |
| reply\_to\_message\_id | Integer                                                                          | Optional | If the message is a reply, ID of the original message                                                                                                                                                                               |
| reply\_markup          | InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply | Optional | Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.                                                      |

### sendSticker

Use this function to send `.webp` stickers using Telegram's `sendSticker` method.

```Lua
mattata.send_sticker(
    chat_id,
    sticker,
    disable_notification,
    reply_to_message_id,
    reply_markup
)
```

| Parameters             | Type                                                                             | Required | Description                                                                                                                                                                                                                                    |
|------------------------|----------------------------------------------------------------------------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| chat\_id               | Integer or String                                                                | Yes      | Unique identifier for the target chat or username of the target channel (in the format @channelusername)                                                                                                                                       |
| sticker                | InputFile or String                                                              | Yes      | Sticker to send. Pass a file\_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a `.webp` file from the Internet, or upload a new one using multipart/form-data. |
| disable\_notification  | Boolean                                                                          | Optional | Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.                                                                                                                |
| reply\_to\_message\_id | Integer                                                                          | Optional | If the message is a reply, ID of the original message                                                                                                                                                                                          |
| reply\_markup          | InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply | Optional | Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.                                                                 |

### sendVideo

Use this function to send video files using Telegram's `sendVideo` method. Telegram clients support `.mp4` videos (other formats may be sent using `sendDocument`). Bots can currently send video files of up to 50 MB in size, this limit may be changed in the future.

```Lua
mattata.send_video(
    chat_id,
    video,
    duration,
    width,
    height,
    caption,
    disable_notification,
    reply_to_message_id,
    reply_markup
)
```

| Parameters             | Type                                                                             | Required | Description                                                                                                                                                                                                                              |
|------------------------|----------------------------------------------------------------------------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| chat\_id               | Integer or String                                                                | Yes      | Unique identifier for the target chat or username of the target channel (in the format @channelusername)                                                                                                                                 |
| video                  | InputFile or String                                                              | Yes      | Video to send. Pass a file\_id as String to send a video that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a video from the Internet, or upload a new video using multipart/form-data. |
| duration               | Integer                                                                          | Optional | Duration of sent video in seconds                                                                                                                                                                                                        |
| width                  | Integer                                                                          | Optional | Video width                                                                                                                                                                                                                              |
| height                 | Integer                                                                          | Optional | Video height                                                                                                                                                                                                                             |
| caption                | String                                                                           | Optional | Video caption (may also be used when resending videos by *file\_id*), 0-200 characters                                                                                                                                                   |
| disable\_notification  | Boolean                                                                          | Optional | Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.                                                                                                          |
| reply\_to\_message\_id | Integer                                                                          | Optional | If the message is a reply, ID of the original message                                                                                                                                                                                    |
| reply\_markup          | InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply | Optional | Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.                                                           |

### sendVoice

Use this function to send audio files using Telegram's `sendVoice` method, if you want Telegram clients to display the file as a playable voice message. For this to work, your audio must be in an `.ogg` file encoded with `OPUS` (other formats may be sent as Audio or Document). Bots can currently send voice messages of up to 50 MB in size, this limit may be changed in the future.

```Lua
mattata.send_voice(
    chat_id,
    voice,
    caption,
    duration,
    disable_notification,
    reply_to_message_id,
    reply_markup
)
```

| Parameters             | Type                                                                             | Required | Description                                                                                                                                                                                                                               |
|------------------------|----------------------------------------------------------------------------------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| chat\_id               | Integer or String                                                                | Yes      | Unique identifier for the target chat or username of the target channel (in the format @channelusername)                                                                                                                                  |
| voice                  | InputFile or String                                                              | Yes      | Audio file to send. Pass a file\_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. |
| caption                | String                                                                           | Optional | Voice message caption, 0-200 characters                                                                                                                                                                                                   |
| duration               | Integer                                                                          | Optional | Duration of the voice message in seconds                                                                                                                                                                                                  |
| disable\_notification  | Boolean                                                                          | Optional | Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.                                                                                                           |
| reply\_to\_message\_id | Integer                                                                          | Optional | If the message is a reply, ID of the original message                                                                                                                                                                                     |
| reply\_markup          | InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply | Optional | Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.                                                            |

### sendLocation

Use this function to send a location on a map using Telegram's `sendLocation` method.

```Lua
mattata.send_location(
    chat_id,
    latitude,
    longitude,
    disable_notification,
    reply_to_message_id,
    reply_markup
)
```

| Parameters             | Type                                                                             | Required | Description                                                                                                                                                                    |
|------------------------|----------------------------------------------------------------------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| chat\_id               | Integer or String                                                                | Yes      | Unique identifier for the target chat or username of the target channel (in the format @channelusername)                                                                       |
| latitude               | Float number                                                                     | Yes      | Latitude of location                                                                                                                                                           |
| longitude              | Float number                                                                     | Yes      | Longitude of location                                                                                                                                                          |
| disable\_notification  | Boolean                                                                          | Optional | Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.                                                |
| reply\_to\_message\_id | Integer                                                                          | Optional | If the message is a reply, ID of the original message                                                                                                                          |
| reply\_markup          | InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply | Optional | Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user. |

## External Usage

You can use the mattata API without initialising the entire library (i.e. no plugin system etc.) by referencing the library in your code. This can be done in the following way:

```Lua
local mattata = require('mattata')
-- Blah, blah; your code goes here
```

Now, if you wish to make a request to the Telegram API, you need to use the `mattata.request()` function; which takes 4 parameters. Below is a table containing each parameter, the type of value it takes and a brief description of what it's for.

| Parameters | Type                | Required | Description                                                                                                                                                                                                               |
|------------|---------------------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| endpoint   | String              | Yes      | The API URL (with the token and method) which you'd like to make the request to (e.g. `https://api.telegram.org/bot123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11/sendMessage`)                                                |
| parameters | Table               | Yes      | A key-value table of parameters and their respective values (if you're using the official Telegram bot API, check out the documented examples above)                                                                      |
| file       | InputFile or String | Optional | A table of a single key/value pair, where the key is the name of the parameter and the value is the filename (if these are included in parameters instead, mattata will attempt to send the filename as a file ID or URL) |
| timeout    | Boolean             | Optional | If set to true, the request will timeout after 1 second                                                                                                                                                                   |

Here's an example script which, when executed, will send the message `Hello, World!` to the chat ID `-100123456789` using the `sendMessage` method via the default API endpoint, `https://api.telegram.org/bot`, using the token `123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11`:

```Lua
local mattata = require('mattata') -- Load the library

local request, code =  mattata.request( -- Make the request to the Telegram bot API
    'https://api.telegram.org/bot123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11/sendMessage',
    {
        ['chat_id'] = -100123456789,
        ['text'] = 'Hello, World!'
    }
)

if not request then
    print('The Telegram bot API returned the following error: ' .. code)
    return false
end

return true
```

It is easier to make requests if you're using mattata for its intended purpose (a plugin-based bot), however it really is that easy to make a request to the bot API - in any snippet of Lua!

Here's an example bot which uses long-polling to get updates, and responds to `/ping` with `PONG`:

```Lua
api = require('mattata')
token = '' -- Enter your token here
last = last or 0
while true do
    local request = api.get_updates(
        5,
        last + 1,
        token
    )
    if request then
        for _, update in ipairs(request.result) do
            last = update.update_id
            if update.message and update.message.text and update.message.text == '/ping' then
                api.request(
                    string.format(
                        'https://api.telegram.org/bot%s/sendMessage',
                        token
                    ),
                    {
                        ['chat_id'] = update.message.chat.id,
                        ['text'] = 'PONG'
                    }
                )
            end
        end
    else
        print('Error')
    end
end
```

## Contribute

As well as feedback and suggestions, you can contribute to the mattata project in the form of a monetary donation. This makes the biggest impact since it helps pay for things such as server hosting and domain registration. A donation of any sum is appreciated and, if you so wish, you can donate [here](https://paypal.me/wrxck).

I'd like to take a moment to thank the following people for their donation:

* j0shu4
* para949
* aRandomStranger
* mochicon
* xenial
* fizdog
* caidens