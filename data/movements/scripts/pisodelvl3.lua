function onStepIn(cid, item, pos)

endpos = {x=999, y=996, z=7}
level = getPlayerLevel(cid)
msg = "Apenas lvl 3500 podem passar!"

if item.actionid == 13542  and level < 3500 then

doTeleportThing(cid, endpos)
doSendMagicEffect(endpos, 83)
doPlayerSendTextMessage(cid, 22, msg)
end
if level >= 3500 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
return 1

end
function onStepOut(cid, item, pos)

if level >= 3500 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
end