function onStepIn(cid, item, pos)

endpos = {x=995, y=1002, z=7}
level = getPlayerLevel(cid)
msg = "Apenas lvl 500 podem passar!"

if item.actionid == 1500  and level < 500 then

doTeleportThing(cid, endpos)
doSendMagicEffect(endpos, 83)
doPlayerSendTextMessage(cid, 22, msg)
end
if level >= 500 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
return 1

end
function onStepOut(cid, item, pos)

if level >= 500 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
end