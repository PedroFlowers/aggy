function onUse(cid, item, frompos, item2, topos)

voc = getPlayerVocation(cid)
queststatus = getPlayerStorageValue(cid,5904)

if voc == 15 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Titan.")
local item1 = doPlayerAddItem(cid,5904,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Enchanted Wyzard\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse spirit of titan no seu novo char level 8 ele ira ser seu novo Supreme Deus.")
setPlayerStorageValue(cid,5904,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 14 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Titan.")
local item1 = doPlayerAddItem(cid,5904,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Enchanted Cleric\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse spirit of titan no seu novo char level 8 ele ira ser seu novo Supreme Deus.")
setPlayerStorageValue(cid,5904,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 16 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Titan.")
local item1 = doPlayerAddItem(cid,5904,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Arqueiro\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse spirit of titan no seu novo char level 8 ele ira ser seu novo Supreme Deus.")
setPlayerStorageValue(cid,5904,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 13 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Titan.")
local item1 = doPlayerAddItem(cid,5904,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Warrior\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"Crie novo character é use esse spirit of titan no seu novo char level 8 ele ira ser seu novo Supreme Deus.")
setPlayerStorageValue(cid,5904,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendTextMessage(cid,22,"Desculpe, você não tem vocação necessaria.")
return 0
end
return 1
end
