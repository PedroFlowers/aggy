-- demon helmet by Alfred

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 1050 then
   		queststatus = getPlayerStorageValue(cid,1001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"deus")
   			doPlayerAddItem(cid,13646,1)
   			setPlayerStorageValue(cid,1001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 1212 then
   		queststatus = getPlayerStorageValue(cid,1002)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found rat.")
   			doPlayerAddItem(cid,103,1)
   			setPlayerStorageValue(cid,1002,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 1124 then
   		queststatus = getPlayerStorageValue(cid,1002)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found Armor.")
   			doPlayerAddItem(cid,102,1)
   			setPlayerStorageValue(cid,1024,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 1013 then
   		queststatus = getPlayerStorageValue(cid,1003)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found Soul yes.")
   			doPlayerAddItem(cid,101,1)
   			setPlayerStorageValue(cid,1003,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 1010 then
   		queststatus = getPlayerStorageValue(cid,1003)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found Soul yes.")
   			doPlayerAddItem(cid,100,1)
   			setPlayerStorageValue(cid,1003,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
