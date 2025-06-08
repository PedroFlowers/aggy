function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=52, y=59, z=15})
doSendAnimatedText(getPlayerPosition(cid), "Spirit!!", TEXTCOLOR_WHITE_EXP)
doSendMagicEffect(item1pos,4)

end