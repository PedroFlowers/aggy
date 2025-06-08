function onUse(cid, item, frompos, item2, topos)
	if item.uid == 13519 then
queststatus = getPlayerStorageValue(cid,100)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Templar Hammer.")
doPlayerAddItem(cid,13519,1)
setPlayerStorageValue(cid,100,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
if item.uid == 5907 then
queststatus = getPlayerStorageValue(cid,100)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"You have found a Templar bow.")
doPlayerAddItem(cid,5907,1)
setPlayerStorageValue(cid,100,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
if item.uid == 7414 then
queststatus = getPlayerStorageValue(cid,100)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"You have found a Templar wand.")
doPlayerAddItem(cid,7414,1)
setPlayerStorageValue(cid,100,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
return 1
end