function onUse(cid, item, frompos, item2, topos)

local exhausted_seconds = 0.5
local exhausted_storagevalue = 555

if(os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doRemoveItem(item.uid,1)
doSendAnimatedText(getPlayerPosition(cid), "$$$", TEXTCOLOR_TEAL)
doPlayerSendTextMessage(cid,22,"You have changed 100 crystal coin to 1 ruby")
doPlayerAddItem(cid,2160,100)
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
end
end