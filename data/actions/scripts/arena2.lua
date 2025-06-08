function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=558, y=101, z=7})
doSendAnimatedText(getPlayerPosition(cid), "Arena", TEXTCOLOR_WHITE_EXP)
doPlayerSendTextMessage(cid,22,"Quando voce morrer na arena relogue seu char porque talvez ele nao estara atacando nem usando arma,Relogue e voltara ao normal!")
doSendMagicEffect(item1pos,4)

end