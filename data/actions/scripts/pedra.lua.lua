function onUse(cid, item, frompos, item2, topos)

itempos = {x=76, y=24, z=6, stackpos=1}
itemid = 1355
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