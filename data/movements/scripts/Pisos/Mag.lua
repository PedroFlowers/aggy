function onStepIn(cid, item, position, fromPosition)

if item.actionid == 154 then
doTeleportThing(cid,{x=318, y=376, z=9})
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
end
end