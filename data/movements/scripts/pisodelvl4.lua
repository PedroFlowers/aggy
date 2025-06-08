function onStepIn(cid, item, pos)

endpos = {x=1003, y=996, z=7}
level = getPlayerLevel(cid)
msg = "Apenas lvl 5000 podem passar!"

if item.actionid == 13543  and level < 5000 then

doTeleportThing(cid, endpos)
doSendMagicEffect(endpos, 83)
doPlayerSendTextMessage(cid, 22, msg)
end
if level >= 5000 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
return 1

end
function onStepOut(cid, item, pos)

if level >= 5000 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
end