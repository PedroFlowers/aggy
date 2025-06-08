function onStepIn(cid, item, pos)



-- teleports config
teleport1 ={x=60, y=396, z=6}



if isPlayer(cid) then

if item.actionid == 13540 then

vip = getPlayerStorageValue(cid,13540)
if vip == -1 then
doPlayerSendCancel(cid,"Vá ate a Rainha e pergunte a ela sobre a passagem.")


doTeleportThing(cid,teleport1)


else

end

end

end

end