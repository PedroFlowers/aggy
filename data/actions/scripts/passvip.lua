function onUse(cid, item, frompos, item2, topos)

if item.itemid == 2157 then
doTeleportThing(cid,{x=998, y=994, z=7})
doSendMagicEffect(frompos,12)
doSendAnimatedText(getPlayerPosition(cid), "Boa Sorte.", TEXTCOLOR_WHITE_EXP)
doRemoveItem(item.uid,1)

end
end