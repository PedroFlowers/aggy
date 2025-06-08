-- Action By BrunuxX
function onUse(cid, item, frompos, item2, topos)

-- Posição das Paredes
wall1pos = {x=887, y=892, z=15, stackpos=1}
wall2pos = {x=889, y=890, z=15, stackpos=1}
-- ID da parede
idparede = 1354
-- UniqueId das Lavancas
uniqueid1 = 6684
uniqueid2 = 6685



-- Não Mexer
wall1 = getThingfromPos(wall1pos)
wall2 = getThingfromPos(wall2pos)
if wall1.itemid >= 1 and wall2.itemid >=1 then

if item.itemid == 1945 and item.uid == uniqueid1 then
doRemoveItem(wall1.uid,idparede)
doRemoveItem(wall2.uid,idparede)
doTransformItem(item.uid,item.itemid+1)

elseif item.itemid == 1946 and item.uid == uniqueid2 then
doRemoveItem(wall1.uid,idparede)
doRemoveItem(wall2.uid,idparede)
doTransformItem(item.uid,item.itemid-1)

elseif item.itemid == 1946 and item.uid == uniqueid1 then
doRemoveItem(wall1.uid,idparede)
doRemoveItem(wall2.uid,idparede)
doTransformItem(item.uid,item.itemid-1)

elseif item.itemid == 1945 and item.uid == uniqueid2 then
doRemoveItem(wall1.uid,idparede)
doRemoveItem(wall2.uid,idparede)
doTransformItem(item.uid,item.itemid+1)
else
return 0
end
return 1
end


if wall1.itemid == 0 and wall2.itemid == 0 then
if item.itemid == 1945 and item.uid == uniqueid1 then
doCreateItem(idparede,1,wall1pos)
doCreateItem(idparede,1,wall2pos)
doTransformItem(item.uid,item.itemid+1)
-- Action By BrunuxX
elseif item.itemid == 1946 and item.uid == uniqueid2 then
doCreateItem(idparede,1,wall1pos)
doCreateItem(idparede,1,wall2pos)
doTransformItem(item.uid,item.itemid-1)

elseif item.itemid == 1946 and item.uid == uniqueid1 then
doCreateItem(idparede,1,wall1pos)
doCreateItem(idparede,1,wall2pos)
doTransformItem(item.uid,item.itemid-1)

elseif item.itemid == 1945 and item.uid == uniqueid2 then
doCreateItem(idparede,1,wall1pos)
doCreateItem(idparede,1,wall2pos)
doTransformItem(item.uid,item.itemid+1)
else
return 0
end
return 1
end
end