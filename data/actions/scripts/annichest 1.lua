function onUse(cid, item, frompos, item2, topos)

	if item.uid == 5001 then
 	queststatus = getPlayerStorageValue(cid,5010)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você recebeu o inten de deus Boa Sorte.")
 	doPlayerAddItem(cid,1,1)
 	setPlayerStorageValue(cid,5010,1)
 	else
        end
	else
	return 0
	end
	
	return 1
	end 