function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=564, y=929, z=4})

doSendAnimatedText(getPlayerPosition(cid), "Jaaaack!!", TEXTCOLOR_WHITE_EXP)
doPlayerSendTextMessage(cid,22,"Parabéns...!Ao chegar na ultima parte!.")
doSendMagicEffect(item1pos,4)

end