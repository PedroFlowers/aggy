function onUse(cid, item, frompos, item2, topos)

voc = getPlayerVocation(cid)
queststatus = getPlayerStorageValue(cid,5906)

if voc == 27 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Darkside Power.")
local item1 = doPlayerAddItem(cid,6550,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of warlock\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_RED)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse Darkside Power no seu novo char level 8 ele ira ser seu novo Darkside.")
setPlayerStorageValue(cid,6550,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 28 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Darkcaster Power.")
local item1 = doPlayerAddItem(cid,6550,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of healer\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_RED)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse Darkcaster Power no seu novo char level 8 ele ira ser seu novo Darkcaster.")
setPlayerStorageValue(cid,6550,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 26 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Chunin Power.")
local item1 = doPlayerAddItem(cid,6550,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of sniper\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_RED)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse Chunin Power no seu novo char level 8 ele ira ser seu novo Chunin.")
setPlayerStorageValue(cid,6550,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 25 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Death Knight Power.")
local item1 = doPlayerAddItem(cid,6550,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of divine hero\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_RED)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse Death Knight Power no seu novo char level 8 ele ira ser seu novo Death Knight.")
setPlayerStorageValue(cid,6550,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendTextMessage(cid,22,"Desculpe, você não tem vocação necessaria.")
return 0
end
return 1
end
