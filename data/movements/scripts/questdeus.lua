vermelho = TEXTCOLOR_RED
function onStepIn(cid, item, pos)
if isPlayer(cid) then
if item.actionid == 13449
then
oi = getPlayerStorageValue(cid,13540) --Nao retire isso daqui!
if oi == -1 then
doPlayerSendTextMessage(cid,22,"Voce tem que encontrar o terrivel Capitao Jack Sparrow e mata-lo ,para prosseguir!.")
doSendAnimatedText(getPlayerPosition(cid), "Jaaaack!",vermelho)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_ENERGYAREA)
else

end

end

end

end