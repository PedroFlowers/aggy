function onUse(cid, item, frompos, item2, topos)

if item.itemid == 5674 then
doTeleportThing(cid,{x=659, y=857, z=10})
doSendMagicEffect(frompos,12)
doSendAnimatedText(getPlayerPosition(cid), "GoGo!.", TEXTCOLOR_WHITE_EXP)

end
end