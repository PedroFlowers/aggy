function onUse(cid, item, frompos, item2, topos)

voc = getPlayerVocation(cid)
queststatus = getPlayerStorageValue(cid,2350)

if voc == 5 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Deus.")
local item1 = doPlayerAddItem(cid,2350,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of warlock\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse spirit of deus no seu novo char level 8 ele ira ser seu novo deus.")
setPlayerStorageValue(cid,2350,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 6 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Deus.")
local item1 = doPlayerAddItem(cid,2350,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of healer\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse spirit of deus no seu novo char level 8 ele ira ser seu novo deus.")
setPlayerStorageValue(cid,2350,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 7 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Deus.")
local item1 = doPlayerAddItem(cid,2350,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of sniper\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse spirit of deus no seu novo char level 8 ele ira ser seu novo deus.")
setPlayerStorageValue(cid,2350,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 8 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Deus.")
local item1 = doPlayerAddItem(cid,2350,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of divine hero\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse spirit of deus no seu novo char level 8 ele ira ser seu novo deus.")
setPlayerStorageValue(cid,2350,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendTextMessage(cid,22,"Desculpe, você não tem vocação necessaria.")
return 0
end
return 1
end
