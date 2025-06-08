function onUse(cid, item, frompos, item2, topos)

local exhausted_seconds = 0.5
local exhausted_storagevalue = 555

if item.itemid == 2152 and item.type == 100 and (os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doRemoveItem(item.uid,item.type)
doPlayerAddItem(cid,2160,1)
doSendAnimatedText(getPlayerPosition(cid), "$$$", TEXTCOLOR_TEAL)
doPlayerSendTextMessage(cid,22,"You have changed 100 platinum to 1 crystal coin")
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)

elseif item.itemid == 2152 and item.type < 100 and (os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doRemoveItem(item.uid,1)
doSendAnimatedText(getPlayerPosition(cid), "$", TEXTCOLOR_YELLOW)
doPlayerAddItem(cid,2148,100)
doPlayerSendTextMessage(cid,22,"You have changed 1 platinum to 100 gold coins")
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
end
end

