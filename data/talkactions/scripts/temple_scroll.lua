function onSay(cid, words, param)
pos = getPlayerPosition(cid)
pz  = getTilePzInfo(pos) 

if pz == 1 then

doPlayerSendTextMessage(cid,22,"Only use in Protection Zone.")
else
if doPlayerRemoveItem(cid, 13647,1) == TRUE then
doTeleportThing(cid,{x=890, y=285, z=7})
doSendAnimatedText(getPlayerPosition(cid), "Woop!!", 213)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_ENERGYAREA)
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE, 'You have been teleported to the temple!')
else
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"Você Precisa De 1 Teleport Para Se Teleportado.")
end
end
return 1
end