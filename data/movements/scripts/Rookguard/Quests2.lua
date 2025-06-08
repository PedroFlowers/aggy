function onStepIn(cid, item, pos)

endpos = {x=343, y=233, z=9}

level = getPlayerLevel(cid)
msg = "you need level 20 to across this door."

if item.actionid == 207 and level < 20 then

doTeleportThing(cid, endpos)
doSendMagicEffect(pos,2)
doSendMagicEffect(endpos,12)
doPlayerSendTextMessage(cid, 23, msg)
end
if level >= 20 and item.itemid == 355 then
end
return 1

end
function onStepOut(cid, item, pos)
if level >= 20 and item.itemid == 355 then
end
end