function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=347 y=258, z=7})
doSendAnimatedText(getPlayerPosition(cid), "Woop!!", TEXTCOLOR_WHITE_EXP)
doSendMagicEffect(item1pos,4)

end