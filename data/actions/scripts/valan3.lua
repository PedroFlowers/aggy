function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=333, y=244, z=7})
doSendAnimatedText(getPlayerPosition(cid), "Woop!!", TEXTCOLOR_WHITE_EXP)
doSendMagicEffect(item1pos,4)

end