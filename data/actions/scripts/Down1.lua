function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=72, y=409, z=3})
doSendAnimatedText(getPlayerPosition(cid), "Down!!", TEXTCOLOR_WHITE_EXP)
doPlayerSendTextMessage(cid,22,"Down!!")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_ENERGYAREA)

end