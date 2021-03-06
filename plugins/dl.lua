local function run(msg, matches)
  if matches[1] == "dl" then
    local file = matches[2]
    if is_sudo(msg) then -- sudo only
      local receiver = get_receiver(msg)
      send_document(receiver, "./data/files/"..file, ok_cb, false) 
    end
  end
end

return {
  patterns = {
  "^[!/](dl) (.*)$"
  },
  run = run
}
