function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 500000) == TRUE then -- dinheiro necess�rio

local random = math.random(1, 10)

if (isInArray({1, 2, 3, 4, 5}, random)) then
doPlayerSendTextMessage(cid, 22, "Desculpe, n�o foi dessa fez, tente novamente.")

elseif random == 6 then
doPlayerAddItem(cid, 2160, 100)
doPlayerSendTextMessage(cid, 22, "Parab�ns, voc� ganhou 500k")

elseif random == 7 then
doPlayerAddItem(cid, 2471, 1)
doPlayerSendTextMessage(cid, 22, "Parab�ns, voc� ganhou um golden helmet")

elseif random == 8 then
doPlayerAddItem(cid, 2469, 1)
doPlayerSendTextMessage(cid, 22, "Parab�ns, voc� ganhou uma dragon scale legs")

elseif random == 9 then
doPlayerAddItem(cid, 2646, 1)
doPlayerSendTextMessage(cid, 22, "Parab�ns, voc� ganhou uma golden boots")

elseif random == 10 and getTilePzInfo(getCreaturePosition(cid)) == FALSE then
doCreateMonster('troll', getCreaturePosition(cid))

end
end
return doPlayerSendCancel(cid, "Voc� n�o tem dinheiro suficiente")
end