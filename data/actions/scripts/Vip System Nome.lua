--VIP System foi criado por CoGames
--Creditos 100% CoGames
function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 13540 then
queststatus = getPlayerStorageValue(cid,13540)
if queststatus == -1 or queststatus == 0 then
doCreatureSay(cid, "Mensagem que o player receberá quando clicará no bau, não esqueça de escrever para ele logar sua conta novamente para ter o (Vip) no nome!", TALKTYPE_ORANGE_1)
db.executeQuery("UPDATE `players` SET `name` = '(Vip) "..getCreatureName(cid).."' WHERE `id` = "..getPlayerGUID(cid)..";")
doPlayerSendTextMessage(cid,25,"Aqui escreva outra mensagem para o player logar sua conta!")
doPlayerAddAddons(cid, 1)
addEvent(doRemoveCreature, 5*1000, cid, true)
setPlayerStorageValue(cid, 13540, 1)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYDAMAGE)
else
doPlayerSendTextMessage(cid,22,"Aqui escreva a mensagem que o player receberá quando relogar a conta!")
end
return true
end
end