function onStepIn(cid, item, position, fromPosition)
if getPlayerLevel(cid) >=1000 then
doTeleportThing(cid, fromPosition)
doPlayerSendTextMessage(cid, 22, "voce e nivel maior que 1000 e nao pode entrar")
doSendMagicEffect(fromPosition, CONST_ME_POFF)
end
end