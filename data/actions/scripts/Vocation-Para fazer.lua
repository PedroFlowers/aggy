---VocDoor-by Sky Hunter---
function onUse(cid, item, frompos, item2, topos)
PlayerVoc = getPlayerVocation(cid)
if PlayerVoc == 5 then
doTeleportThing(cid,{x=100, y=100, z=100})
    else
 doPlayerSendCancel(cid,"Only sniper may open this door.")
        return 1
    end
end
