function onAddItem(moveItem, tileItem, position, cid)
if isPlayer(cid) then
doRemoveItem(moveItem.uid)
doPlayerSendTextMessage(cid,22,"Voc� n�o pode jogar items em cima da bola!")
end
end