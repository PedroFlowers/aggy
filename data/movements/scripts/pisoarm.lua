function onStepIn(cid, item, pos)

local monsterPos = {x=608, y=871, z=10, stackpos=1}

if(item.actionid == 13446) then
doSummonCreature("Capitao Jack Sparrow", monsterPos)
else
return true
end
end
