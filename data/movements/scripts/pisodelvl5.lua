function onStepIn(cid, item, pos)

endpos = {x=1003, y=998, z=7}
level = getPlayerLevel(cid)
msg = "Apenas lvl 8000 podem passar!"

if item.actionid == 13544  and level < 8000 then

doTeleportThing(cid, endpos)
doSendMagicEffect(endpos, 83)
doPlayerSendTextMessage(cid, 22, msg)
end
if level >= 8000 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
return 1

end
function onStepOut(cid, item, pos)

if level >= 8000 and item.itemid == 425 then
doTransformItem(item.uid, 426)
end
end