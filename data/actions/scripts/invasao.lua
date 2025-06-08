function onUse(cid, item, frompos, item2, topos)
playerpos = getPlayerPosition(cid)
demon1pos = {x=113, y=112, z=7}
demon2pos = {x=113, y=113, z=7}
demon3pos = {x=113, y=114, z=7}
demon4pos = {x=113, y=115, z=7}
demon5pos = {x=113, y=116, z=7}
demon6pos = {x=113, y=117, z=7}
demon7pos = {x=113, y=118, z=7}
demon8pos = {x=113, y=119, z=7}
demon9pos = {x=113, y=120, z=7}
demon10pos = {x=113, y=121, z=7}
if item.itemid == 13673 then
if getPlayerAccess(cid) == 4 or 5 then
player1pos = {x=topos.x, y=topos.y, z=topos.z, stackpos=253}
player1 = getThingfromPos(player1pos)
doSummonCreature("Orc", demon1pos)
doSummonCreature("Orc Berserker", demon2pos)
doSummonCreature("Orc Shaman", demon3pos)
doSummonCreature("Orc Leader", demon4pos)
doSummonCreature("Orc", demon5pos)
doSummonCreature("Orc Berserker", demon6pos)
doSummonCreature("Orc Shaman", demon7pos)
doSummonCreature("Orc Leader", demon8pos)
doSummonCreature("Orc", demon9pos)
doSummonCreature("Orc Berserker", demon10pos)
doSendMagicEffect(frompos,12)
end
return 0
end
return 1
end