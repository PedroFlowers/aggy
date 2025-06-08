azul = TEXTCOLOR_BLUE
function onStepIn(cid, item, pos)
if isPlayer(cid) then
if item.actionid == 14001
then
oi = getPlayerStorageValue(cid,13540) --Nao retire isso daqui!
if oi == -1 then
doPlayerSendTextMessage(cid,22,"Deus!.")
doSendAnimatedText(getPlayerPosition(cid), "Deus!",azul)
doSendMagicEffect(getPlayerPosition(cid), 83)
else

end

end

end

end