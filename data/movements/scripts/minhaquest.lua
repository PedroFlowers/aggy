function onStepIn(cid, item, pos)

if getPlayerLevel(cid) < 10000 and getPlayerAccess(cid) < 1 then
doPlayerSendCancel(cid,"Somente player com level 10000 ou maior pode passar.")
doSendMagicEffect(pos, 2)
pos.y = pos.y+1
doTeleportThing(cid, pos)
doSendMagicEffect(pos, 2)
end
end