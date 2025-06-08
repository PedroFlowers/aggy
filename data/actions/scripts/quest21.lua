function onUse(cid, item, frompos, item2, topos)
if item.uid == 2300 then
queststatus = getPlayerStorageValue(cid,5001)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found basic items")
doPlayerAddItem(cid,2000, 1)
doPlayerAddItem(cid,6433, 1)
doPlayerAddItem(cid,5461, 1)
doPlayerAddItem(cid,6550, 1)
doPlayerAddItem(cid,2665, 1)
doPlayerAddItem(cid,13502, 1)
doPlayerAddItem(cid,7438, 1)
doPlayerAddItem(cid,13656, 1)
doPlayerAddItem(cid,13684, 1)
doPlayerAddItem(cid,2644, 50)
doPlayerAddItem(cid,6527, 1)
doPlayerAddItem(cid,2160, 100)
setPlayerStorageValue(cid,5001,1)
else
doPlayerSendTextMessage(cid,22,"The chest is empty")
end
end
return TRUE
end