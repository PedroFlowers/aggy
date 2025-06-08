function onSay(cid, words, param)
pos = getPlayerPosition(cid)
pz  = getTilePzInfo(pos) 

if pz == 0 then

doPlayerSendTextMessage(cid,22,"Only use in Protection Zone.")
else
if doPlayerRemoveItem(cid, 13691,1) == TRUE then
doTeleportThing(cid,{x=1000, y=1000, z=6})
doSendAnimatedText(getPlayerPosition(cid), "Woop!!", 213)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_ENERGYAREA)
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE, 'You have been teleported to the temple vip!')
else
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"Você Precisa De 1 Teleport Para Se Teleportado.")
end
end
return 1
end