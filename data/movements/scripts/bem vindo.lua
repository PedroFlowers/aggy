azul = TEXTCOLOR_BLUE
function onStepIn(cid, item, pos)
if isPlayer(cid) then
if item.actionid == 13545
then
oi = getPlayerStorageValue(cid,13540) --Nao retire isso daqui!
if oi == -1 then
doPlayerSendTextMessage(cid,22,"Bem Vindo!.")
doSendAnimatedText(getPlayerPosition(cid), "Temple!",azul)
doSendMagicEffect(getPlayerPosition(cid), 83)
else

end

end

end

end