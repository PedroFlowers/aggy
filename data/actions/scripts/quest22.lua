function onUse(cid, item, frompos, item2, topos)
if item.uid == 2301 then
queststatus = getPlayerStorageValue(cid,5002)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found magic items quest")
doPlayerAddItem(cid,2500, 1)
doPlayerAddItem(cid,6527, 30)
setPlayerStorageValue(cid,5002,1)
else
doPlayerSendTextMessage(cid,22,"The chest is empty")
end
end
return TRUE
end