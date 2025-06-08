function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=106, y=404, z=8})
doSendAnimatedText(getPlayerPosition(cid), "Haaaa!!", TEXTCOLOR_WHITE_EXP)
doPlayerSendTextMessage(cid,22,"?")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_33)

end