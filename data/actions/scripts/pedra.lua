function onUse(cid, item, frompos, item2, topos)
gatepos = {x=887, y=893, z=15, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 3002 and item.itemid == 1945 and getgate.itemid == 1946 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 3002 and item.itemid == 2712 and getgate.itemid == 0 then
doCreateItem(1449,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end