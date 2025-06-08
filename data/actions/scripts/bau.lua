function onUse(cid, item, frompos, item2, topos)

voc = getPlayerVocation(cid)
queststatus = getPlayerStorageValue(cid,2361)

if voc == 1 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Valan.")
local item1 = doPlayerAddItem(cid,2361,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Wyzard\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"crie novo character é use esse spirit of valan no seu novo char level 8 ele ira ser seu novo valan.")
setPlayerStorageValue(cid,2361,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 2 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Valan.")
local item1 = doPlayerAddItem(cid,2361,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Cleric\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"crie novo character é use esse spirit of valan no seu novo char level 8 ele ira ser seu novo valan.")
setPlayerStorageValue(cid,2361,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 3 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Valan.")
local item1 = doPlayerAddItem(cid,2361,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Ranger\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"crie novo character é use esse spirit of valan no seu novo char level 8 ele ira ser seu novo valan.")
setPlayerStorageValue(cid,2361,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif voc == 4 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You receive The Spirit of Valan.")
local item1 = doPlayerAddItem(cid,2361,1)
doSetItemSpecialDescription(item1, "This iten recorded the name vocation of Slayer\'s." .. getPlayerName(cid) .. "  Gratz for Valan Quest.")
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doSendAnimatedText(topos, "Cleck!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
doShowTextDialog(cid,2180,"crie novo character é use esse spirit of valan no seu novo char level 8 ele ira ser seu novo valan.")
setPlayerStorageValue(cid,2361,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendTextMessage(cid,22,"Desculpe, você não tem vocação necessaria.")
return 0
end
return 1
end
