--function by ta4e--
--for tibia 7.92--
function onUse(cid, item, frompos, item2, topos)

presente = math.random(1,28)
pos = getPlayerPosition(cid)

if presente == 1 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13555,1) 
doRemoveItem(item.uid,1)

elseif presente == 2 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13552,1)
doRemoveItem(item.uid,1)

elseif presente == 3 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13682,1) --soul orb
doRemoveItem(item.uid,1)

elseif presente == 4 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13683,1) --teddy bear
doRemoveItem(item.uid,1)

elseif presente == 5 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13685,1) -- panda teddy
doRemoveItem(item.uid,1)

elseif presente == 6 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2496,1) --stuffed dragon
doRemoveItem(item.uid,1)

elseif presente == 7 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,7426,1) -- dsm
doRemoveItem(item.uid,1)

elseif presente == 8 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13579,1) -- demon shield
doRemoveItem(item.uid,1)

elseif presente == 9 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13591,1) -- boh
doRemoveItem(item.uid,1)

elseif presente == 10 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13584,1) -- piggy bank
doRemoveItem(item.uid,1)

elseif presente == 11 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2160,50) --cream cake
doRemoveItem(item.uid,1)

elseif presente == 12 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13604,1) --fireworks
doRemoveItem(item.uid,1)

elseif presente == 13 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13691,5) --party hat
doRemoveItem(item.uid,1)

elseif presente == 14 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13587,1) --bar of chocolate
doRemoveItem(item.uid,1)

elseif presente == 15 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13602,1) --aol
doRemoveItem(item.uid,1)

elseif presente == 16 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13540,1) --royal helmet
doRemoveItem(item.uid,1)

elseif presente == 17 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13682,1) --platinum coin
doRemoveItem(item.uid,1)

elseif presente == 18 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2114,1) -- piggy bank
doRemoveItem(item.uid,1)

elseif presente == 19 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13693,50) --cream cake
doRemoveItem(item.uid,1)

elseif presente == 20 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13565,1) --fireworks
doRemoveItem(item.uid,1)

elseif presente == 21 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13564,1) --party hat
doRemoveItem(item.uid,1)

elseif presente == 22 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2160,10) --bar of chocolate
doRemoveItem(item.uid,1)

elseif presente == 23 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2160,50) --platinum coin
doRemoveItem(item.uid,1)

elseif presente == 24 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,6570,1) -- piggy bank
doRemoveItem(item.uid,1)

elseif presente == 25 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2160,95) --cream cake
doRemoveItem(item.uid,1)

elseif presente == 26 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,6527,10) --fireworks
doRemoveItem(item.uid,1)

elseif presente == 27 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,6527,15) --party hat
doRemoveItem(item.uid,1)

elseif presente == 28 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,6570,1) --bar of chocolate
doRemoveItem(item.uid,1)
end

return 1
end