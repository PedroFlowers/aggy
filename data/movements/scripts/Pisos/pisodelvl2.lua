function onStepIn(cid, item, pos)

endpos = {x=1000, y=1000, z=10}
level = getPlayerLevel(cid)
msg = "Apenas lvl 2200 podem passar!"

if item.uid == 9002 and level < 2200 then

doTeleportThing(cid, endpos)
doSendMagicEffect(endpos, 14)
doPlayerSendTextMessage(cid, 22, msg)
end
if level >= 2200 and item.itemid == 426 then
doTransformItem(item.uid, 425)
end
return 1

end
function onStepOut(cid, item, pos)

if level >= 2200 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
end