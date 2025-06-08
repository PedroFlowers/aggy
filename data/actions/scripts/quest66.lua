function onUse(cid, item, frompos, item2, topos)
if item.uid == 2302 then
queststatus = getPlayerStorageValue(cid,5002)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found basic items")
doPlayerAddItem(cid,2294, 100)
doPlayerAddItem(cid,2313, 100)
doPlayerAddItem(cid,2273, 100)
doPlayerAddItem(cid,2268, 100)
setPlayerStorageValue(cid,5002,1)
else
doPlayerSendTextMessage(cid,22,"Voce Ja pegou as runas")
end
end
return TRUE
end