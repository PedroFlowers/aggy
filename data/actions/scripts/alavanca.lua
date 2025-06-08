function onUse(cid, item, pos)

pos1 = { x=326, y=113, z=7, stackpos=2}
pos1 = getThingfromPos(pos1)
pos2 = { x=328, y=113, z=7, stackpos=2}
pos2 = getThingfromPos(pos2)
pos3 = { x=330, y=113, z=7, stackpos=2}
pos3 = getThingfromPos(pos3)
pos4 = { x=332, y=113, z=7, stackpos=2}
pos4 = getThingfromPos(pos4)
pos5 = { x=324, y=116, z=7, stackpos=1}
pos5 = getThingfromPos(pos5)


if pos1.itemid == 2059 and pos2.itemid == 2059 and pos3.itemid == 2059 and pos4.itemid == 2059 then

doTransformItem(pos1.uid, 2058)
doTransformItem(pos2.uid, 2058)
doTransformItem(pos3.uid, 2058)
doTransformItem(pos4.uid, 2058)
doRemoveItem(pos5.uid, 1)


end

if (item.itemid == 1945) then
doTransformItem(item.uid, 1946)
else
doTransformItem(item.uid, 1945)
end

return 1
end