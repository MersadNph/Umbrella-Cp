local function run(msg,matches)
if matches[1] == "+" and matches[2] then
block_user("user#id"..matches[2], ok_cb, false)
return "User "..matches[2].." بلاک شد"
end

if matches[1] == "-" and matches[2] then
unblock_user("user#id"..matches[2], ok_cb, false)
  return "یوزر "..matches[2].." انبلاک شد"
end
end

return {
description = "Block And Unblock User From Pm"
usage = {
    "block + {user_id} : Block User From Private",
    "block - {user_id} : Unblock User From Private",
    },
    patterns = {
    "^[Bb]lock (+) (%d+)$",
    "^[Bb]lock (-) (%d+)$",
    },
    run = run
    }
