function onStepIn(cid, item, pos)

endpos = {x=999, y=1001, z=7}
level = getPlayerLevel(cid)
msg = "Apenas lvl 30000 podem passar!"

if item.actionid == 1499  and level < 30000 then

doTeleportThing(cid, endpos)
doSendMagicEffect(endpos, 83)
doPlayerSendTextMessage(cid, 22, msg)
end
if level >= 30000 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
return 1

end
function onStepOut(cid, item, pos)

if level >= 30000 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
end