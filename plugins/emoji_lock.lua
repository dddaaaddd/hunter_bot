local function run(msg)
    if msg.to.type == 'chat' and not is_momod(msg) then
        chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        return 'ÙØ±Ø³ØªØ§Ø¯Ù† Ø§Ù…ÙˆØ¬ÛŒ Ù…Ù…Ù†ÙˆØ¹ Ø§Ø³Øª'
    end
end

return {
    patterns = {
    "ðŸ˜€",
    "ðŸ˜†",
    "ðŸ˜‚",
    "ðŸ˜˜",
    "â¤ï¸",
    "ðŸ˜",
    "ðŸ˜Š",
    "ðŸ’‹",
    "ðŸ˜­",
    "ðŸ˜„",
    "ðŸ˜”",
    "â˜ºï¸",
    "ðŸ‘ðŸ»",
    "ðŸ˜",
    "ðŸ˜’",
    "ðŸ˜³",
    "ðŸ˜œ",
    "ðŸ™ˆ",
    "ðŸ˜‰",
    "ðŸ˜ƒ",
    "ðŸ˜¢",
    "ðŸ˜š",
    "ðŸ˜…",
    "ðŸ˜ž",
    "ðŸ˜",
    "ðŸ˜¡",
    "ðŸ˜±",
    "ðŸ˜",
    "ðŸ™Š",
    "ðŸ˜Œ",
    "ðŸ˜‹",
    "ðŸ‘ŒðŸ»",
    "ðŸ˜",
    "ðŸ˜•"
    }, 
run = run
}
