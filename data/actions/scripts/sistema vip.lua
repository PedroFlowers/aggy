--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==20000 then
queststatus = getPlayerStorageValue(cid,20000)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Vip")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,20000,1)
setPlayerStorageValue(cid,20000,1)
end
return 0
end
return 1
end
