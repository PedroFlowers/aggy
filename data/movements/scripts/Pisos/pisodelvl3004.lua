function onStepIn(cid, item, pos)

endpos = {x=329, y=118, z=7}
level = getPlayerLevel(cid)
msg = "Apenas lvl 300 podem passar!"

if item.uid == 9013 and level < 300 then

doTeleportThing(cid, endpos)
doSendMagicEffect(endpos, 14)
doPlayerSendTextMessage(cid, 22, msg)
end
if level >= 300 and item.itemid == 426 then
doTransformItem(item.uid, 425)
end
return 1

end
function onStepOut(cid, item, pos)

if level >= 300 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
end