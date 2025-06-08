function onUse(cid, item, frompos, item2, topos)

if item.itemid == 1280 then
doTeleportThing(cid,{x=701, y=832, z=9})
doSendMagicEffect(frompos,12)
doSendAnimatedText(getPlayerPosition(cid), "GoGo!.", TEXTCOLOR_WHITE_EXP)

end
end