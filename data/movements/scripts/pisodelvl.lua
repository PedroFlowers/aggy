function onStepIn(cid, item, pos)

endpos = {x=995, y=998, z=7}
level = getPlayerLevel(cid)
msg = "Apenas lvl 1000 podem passar!"

if item.actionid == 13540  and level < 1000 then

doTeleportThing(cid, endpos)
doSendMagicEffect(endpos, 83)
doPlayerSendTextMessage(cid, 22, msg)
end
if level >= 1000 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
return 1

end
function onStepOut(cid, item, pos)

if level >= 1000 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
end