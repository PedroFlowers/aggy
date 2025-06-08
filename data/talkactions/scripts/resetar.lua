function onSay(cid, words, param)

resets = getPlayerStorageValue(cid,799)
if resets == -1 then
setPlayerStorageValue(cid,799,0)
end
if getPlayerLevel(cid) > 799 then
setPlayerStorageValue(cid,799,resets+1)
local pid = getPlayerGUID(cid)
doRemoveCreature(cid)
db.executeQuery("UPDATE `players` SET `level` = 8, `experience` = 4200 WHERE `id` = "..pid)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You need the level 800 or more")
end
end 