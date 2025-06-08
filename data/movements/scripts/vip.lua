function onStepIn(cid, item, pos)



-- teleports config
teleport1 ={x=999, y=999, z=7}



if isPlayer(cid) then

if item.actionid == 15550 then

vip = getPlayerStorageValue(cid,15550)
if vip == -1 then
doPlayerSendCancel(cid,"Esta área é exclusiva para players VIPs.")


doTeleportThing(cid,teleport1)


else

end

end

end

end
