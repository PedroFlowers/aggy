function onUse(cid, item, frompos, item2, topos)

item1pos = {x=241, y=196, z=7, stackpos=255} --item1pos
item2pos = {x=242, y=196, z=7, stackpos=255} --item2pos
item3pos = {x=244, y=196, z=7, stackpos=255} --item3pos
item1 = getThingfromPos(item1pos)
item2 = getThingfromPos(item2pos)
item3 = getThingfromPos(item3pos)


if item.itemid == 1945 and item1.itemid == 2431 and item2.itemid == 2431 or item1.itemid == 2431 and item2.itemid == 2431 then
doRemoveItem(item1.uid,1)
doSendMagicEffect(item1pos,13)
doRemoveItem(item2.uid,1)
doSendMagicEffect(item2pos,13)
doTransformItem(item.uid,item.itemid+1)
doCreateItem(13509,1, item3pos)
doSendMagicEffect(item3pos,13)
doPlayerSendTextMessage(cid,22,'Tcharam!')

elseif item.uid == 9011 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
return 0
end

return 1

end