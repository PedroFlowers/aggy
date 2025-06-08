function onUse(cid, item, frompos, item2, topos)
local vipstorage = 13540

if item.actionid == 13540 then
if getPlayerStorageValue(cid, vipstorage) == TRUE then
pos = getPlayerPosition(cid)

if pos.x == topos.x then
if pos.y < topos.y then
pos.y = 998
else
pos.y = 998
end
elseif pos.y == topos.y then
if pos.x < topos.x then
pos.x = 999
else
pos.x = 999
end
pos.z = 6
else
pos.z = 6
end
elseif pos.z == topos.z then
else
doPlayerSendTextMessage(cid,22,'Fique na frente da porta.')
return 1
end

doTeleportThing(cid,pos)
doSendMagicEffect(topos,12)
doPlayerSay(cid, "Bem Vindo a Zona Vip.", TALKTYPE_ORANGE_1)
else
doPlayerSendTextMessage(cid,22,'So players vip podem passar! fale !buyvip')
end
return 1
end
return TRUE
end