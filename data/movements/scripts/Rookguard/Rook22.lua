function onStepIn(cid, item, pos)

endpos = {x=246, y=221, z=6}

level = getPlayerLevel(cid)
msg = "You need level 3 to across the bridge."

if item.actionid == 203 and level < 3 then

doTeleportThing(cid, endpos)
doSendMagicEffect(pos,2)
doSendMagicEffect(endpos,12)
doPlayerSendTextMessage(cid, 23, msg)
end
if level >= 3 and item.itemid == 4334 then
end
return 1

end
function onStepOut(cid, item, pos)
if level >= 5 and item.itemid == 4334 then
end
end