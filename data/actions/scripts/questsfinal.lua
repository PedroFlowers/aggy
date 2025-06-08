function onUse(cid, item, frompos, item2, topos)

if item.itemid == 9975 then
doTeleportThing(cid,{x=1102, y=661, z=15})
doSendMagicEffect(frompos,12)
doSendAnimatedText(getPlayerPosition(cid), "GoGo!.", TEXTCOLOR_WHITE_EXP)

end
end