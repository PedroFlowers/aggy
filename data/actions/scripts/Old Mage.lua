function onUse(cid, item, frompos, item2, topos)

voc = getPlayerVocation(cid)
queststatus = getPlayerStorageValue(cid,2063)

if voc == 17 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Mystic Spirit.")
local item1 = doPlayerAddItem(cid,2063,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Zeus\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse Mystic Spirit no seu novo char level 8 ele ira ser seu novo Mystic Deus.")
setPlayerStorageValue(cid,2063,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 18 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Mystic Spirit.")
local item1 = doPlayerAddItem(cid,2063,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Hades\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse Mystic Spirit no seu novo char level 8 ele ira ser seu novo Mystic Deus.")
setPlayerStorageValue(cid,2063,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 19 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Mystic Spirit.")
local item1 = doPlayerAddItem(cid,2063,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Ninja\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse Mystic Spirit no seu novo char level 8 ele ira ser seu novo Mystic Deus.")
setPlayerStorageValue(cid,2063,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 20 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Mystic Spirit.")
local item1 = doPlayerAddItem(cid,2063,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Mercenario\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse Mystic Spirit no seu novo char level 8 ele ira ser seu novo Mystic Deus.")
setPlayerStorageValue(cid,2063,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendTextMessage(cid,22,"Desculpe, você não tem vocação necessaria.")
return 0
end
return 1
end
