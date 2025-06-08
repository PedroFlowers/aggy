function onUse(cid, item, frompos, item2, topos)

local exhausted_seconds = 0.5
local exhausted_storagevalue = 555

if item.itemid == 2160 and item.type == 100 and (os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doRemoveItem(item.uid,item.type)
doPlayerAddItem(cid,13685,1)
doSendAnimatedText(getPlayerPosition(cid), "$$$$", TEXTCOLOR_RED)
doPlayerSendTextMessage(cid,22,"You have changed 1 ruby coin to 100 crystal coins")
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)

elseif item.itemid == 2160 and item.type < 100 and (os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doRemoveItem(item.uid,1)
doSendAnimatedText(getPlayerPosition(cid), "$$", TEXTCOLOR_PLATINUMBLUE)
doPlayerAddItem(cid,2152,100)
doPlayerSendTextMessage(cid,22,"You have changed 1 crystal coin to 100 platinum coins")
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
end
end



