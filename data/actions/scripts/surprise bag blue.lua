--function by ta4e--
--for tibia 7.92--
function onUse(cid, item, frompos, item2, topos)

presente = math.random(1,11)
pos = getPlayerPosition(cid)

--surprise bag blue--
if presente == 1 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 2 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 3 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 4 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 5 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 6 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 7 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 8 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 9 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 10 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)

elseif presente == 11 then
doSendMagicEffect(pos,50)
doPlayerSay(cid, "Soul +250!", TALKTYPE_ORANGE_1)
doPlayerAddSoul(cid,250)
doRemoveItem(item.uid,1)
end

return 1
end