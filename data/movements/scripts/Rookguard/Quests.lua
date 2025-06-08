function onStepIn(cid, item, pos)

endpos = {x=275, y=235, z=10}

level = getPlayerLevel(cid)
msg = "Explosion!"

if item.actionid == 206 and level < 100 then

doTeleportThing(cid, endpos)
doSendMagicEffect(pos,2)
doSendMagicEffect(endpos,12)
doPlayerSendTextMessage(cid, 23, msg)
end
if level >= 100 and item.itemid == 355 then
end
return 1

end
function onStepOut(cid, item, pos)
if level >= 100 and item.itemid == 355 then
end
end