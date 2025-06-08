function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=450, y=112, z=15})
doSendAnimatedText(getPlayerPosition(cid), "Woop!!", TEXTCOLOR_WHITE_EXP)
doSendMagicEffect(item1pos,4)

end