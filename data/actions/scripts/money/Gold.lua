function onUse(cid, item, frompos, item2, topos)

local exhausted_seconds = 0.5
local exhausted_storagevalue = 555

if item.itemid == 2148 and item.type == 100 and (os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doRemoveItem(item.uid,item.type)
doPlayerAddItem(cid,2152,1)
doSendAnimatedText(getPlayerPosition(cid), "$$", TEXTCOLOR_PLATINUMBLUE)
doPlayerSendTextMessage(cid,22,"You have changed 100 gp to 1 platinum coin")
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)

elseif item.itemid == 2148 and item.type < 100 and (os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doPlayerSendTextMessage(cid,22,"You have to got 100 gp's to change for platinum coin")
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
end
end



