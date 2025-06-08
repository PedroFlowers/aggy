function onAddItem(moveItem, tileItem, position, cid)
if isPlayer(cid) then
doRemoveItem(moveItem.uid)
doPlayerSendTextMessage(cid,22,"Você não pode jogar items em cima da bola!")
end
end