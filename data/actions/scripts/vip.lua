function onUse(cid, item, frompos, item2, topos)

if item.itemid == 2141 then
doTeleportThing(cid,{x=969, y=949, z=10})
doSendMagicEffect(frompos,87)
doSendAnimatedText(getPlayerPosition(cid), "Zona Vip!", TEXTCOLOR_ORANGE1)
doRemoveItem(item.uid,0)

end
end