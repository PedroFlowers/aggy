function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=505, y=155, z=15})
doSendAnimatedText(getPlayerPosition(cid), "Woop!!", TEXTCOLOR_WHITE_EXP)
doSendMagicEffect(item1pos,4)

end