function onUse(cid, item, fromPosition, itemEx, toPosition)
piece1pos = {x=1159, y=800, z=14, stackpos=1}
piece2pos = {x=1159, y=799, z=17, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
getpiece2 = getThingfromPos(piece2pos)
if item.uid == 9987 and item.itemid == 1945 and getpiece1.itemid == 1355 then
doRemoveItem(getpiece1.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 9987 and item.itemid == 1946 then
doCreateItem(1355,1,piece1pos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end 