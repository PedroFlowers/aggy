function onStepIn(cid, item, pos)

pos = { x=324, y=116, z=7, stackpos=1}
wall = getThingfromPos(pos)
doCreateItem(1026,1,pos)

return 1
end