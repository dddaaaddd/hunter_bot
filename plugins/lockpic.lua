es (32 sloc)  926 Bytes
local function run(msg, matches)
if msg.to.type == 'chat' then
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_picture'] then
                lock_picture = data[tostring(msg.to.id)]['settings']['lock_picture']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_picture == "yes" then
        send_large_msg(chat, picture is not allowed here!!')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 end
return {
	usage = {
		"lock picture : If User Send A Message With jpg , png  format Then Bot Removed User.",
		"unlock picture : No Action Execute If User Send Mesage With jpg , png",
		},
  patterns = {
    "jpg",
	"png"
  },
  run = run
}
