function onUse(cid, item, frompos, item2, topos)
pos = {x=113, y=105, z=7}
if item.itemid == 13691 then
doPlayerSendCancel(cid,"tp")
doTeleportThing(cid,pos)
doSendMagicEffect(nplayer1pos,10)
doSendMagicEffect(topos,6)
doSendMagicEffect(frompos,6)
doRemoveItem(item.uid,1)
doPlayerTakeItem(cid,13691,1)
end
return 1
end