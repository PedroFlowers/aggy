function onUse(cid, item, frompos, item2, topos)

local pos1 = {x=45, y=116, z=8}
doTeleportThing(cid, pos1)
doSendMagicEffect(topos,12)

if item.uid == 4068 then
queststatus = getPlayerStorageValue(cid,4066)
if queststatus == -1 then
doPlayerSendTextMessage(cid,24,"You have found a Crow armor.")
doPlayerAddItem(cid,13529,1)
setPlayerStorageValue(cid,4068,1)
else
doPlayerSendTextMessage(cid,24,"It is empty.")
end
else
return 0
end

return 1
end