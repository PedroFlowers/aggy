function onUse(cid, item, frompos, item2, topos)

itempos = {x=1105, y=400, z=7, stackpos=1}
itemid = 1304
item3 = getThingfromPos(itempos)

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,0)
doCreateItem(itemid2,1,itempos2)
elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
doCreateItem(itemid,1,itempos)
doRemoveItem(item2.uid,0)
end

return 1
end