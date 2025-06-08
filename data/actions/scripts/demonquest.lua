function onMonsterDeath(killer, monster, corpse, damage, totaldamage)

wallpos = {x=887, y=893, z=15, stackpos=2}
wall = getThingfromPos(wallpos)

if wall.itemid == 1497 then

doRemoveItem(wall.uid,1)
doSendMagicEffect(wallpos,2)


end
return 1
end

function onUse(cid, item, frompos, item2, topos)
telpos = {x=887, y=894, z=15, stackpos=2}
wallpos = {x=887, y=893, z=15, stackpos=2}
wall = getThingfromPos(wallpos)

if item.uid == 2000 then
queststatus = getPlayerStorageValue(cid,2000)

if queststatus == -1 then
doPlayerSendTextMessage(cid,22,'Você achou um Demon Shield.')
doPlayerAddItem(cid,2520,1)
setPlayerStorageValue(cid,2000,1)
doTeleportThing(cid,telpos)
doCreateItem(1497,1,wallpos)
doSendMagicEffect(telpos,13)
else
doPlayerSendTextMessage(cid,22,"Você ja recebeu seu prêmio.")
doTeleportThing(cid,telpos)
doCreateItem(1497,1,wallpos)
doSendMagicEffect(telpos,13)
end

return 1
else
return 0
end
end