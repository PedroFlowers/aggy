function onUse(cid, item, frompos, item2, topos)

local msg = "You have found a Ice Rapier, but you woke up the vampire."
local storage = getPlayerStorageValue(cid,3001)
local gradepos = {x=1005, y=1020, z=8, stackpos=1}
local grade = getThingfromPos(gradepos)

if item.uid == 1742 then
if storage == -1 then
doSummonCreature("Vampire",{x=topos.x-1, y=topos.y, z=topos.z})
doPlayerSendTextMessage(cid,22,msg)
doPlayerAddItem(cid,2396,1)
doRemoveItem(grade.uid,1) 
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
else
return 0
end
end