function onStepIn(cid, item, pos)

local timenow = os.time()
quantity = math.floor((getPlayerStorageValue(cid, 15550) - timenow)/(24 * 60 * 60))
if isPlayer(cid) then
if quantity > 0 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você tem ".. (quantity < 0 and 0 or quantity) .." dias de VIP no seu character.")
else
dir = getPlayerLookDir(cid)
pos = getPlayerPosition(cid)

if dir == 0 then
newpos = {x=pos.x, y=pos.y+1, z=pos.z}
elseif dir == 2 then
newpos = {x=pos.x, y=pos.y-1, z=pos.z}
elseif dir == 1 then
newpos = {x=pos.x-1, y=pos.y, z=pos.z}
elseif dir == 3 then
newpos = {x=pos.x+1, y=pos.y, z=pos.z}
end

doTeleportThing(cid, newpos)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Somente jogadores VIPs podem entrar nesta área.")
end
end
end