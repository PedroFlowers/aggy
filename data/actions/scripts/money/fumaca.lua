function onUse(cid, item, frompos, item2, topos)

local exhausted_seconds = 0.5
local exhausted_storagevalue = 555

if item.itemid == 13685 and item.type == 100 and (os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doRemoveItem(item.uid,item.type)
doPlayerAddItem(cid,6548,1)
doSendAnimatedText(getPlayerPosition(cid), "$$$$", TEXTCOLOR_RED)
doPlayerSendTextMessage(cid,22,"You have changed 100 ruby coin to 1 AggySorf coin")
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)

elseif item.itemid == 6548 and item.type < 100 and (os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doRemoveItem(item.uid,1)
doSendAnimatedText(getPlayerPosition(cid), "$$", TEXTCOLOR_PLATINUMBLUE)
doPlayerAddItem(cid,13685,100)
doPlayerSendTextMessage(cid,22,"You have changed 1 AggySorf coin to 100 Ruby")
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
end
end



