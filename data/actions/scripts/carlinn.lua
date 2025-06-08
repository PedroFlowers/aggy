function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=729, y=1186, z=7})
doSendAnimatedText(getPlayerPosition(cid), "Zona Vip!", TEXTCOLOR_ORANGE)
doPlayerSendTextMessage(cid,22,"n fala pra ninguem!")
doSendMagicEffect(item1pos,4)

end