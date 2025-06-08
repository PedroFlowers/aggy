function onStepIn(cid, item, pos)

pos = { x=324, y=121, z=7, stackpos=1}
wall = getThingfromPos(pos)
doCreateItem(1034,1,pos)

return 1
end