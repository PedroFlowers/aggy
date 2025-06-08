-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 7102 then
   		queststatus = getPlayerStorageValue(cid,5491)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found 100 banana.")
   			doPlayerAddItem(cid,2676,100)
   			setPlayerStorageValue(cid,5491,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
                        doTeleportThing(cid,{x=50, y=51, z=7})
                        doSendAnimatedText(getPlayerPosition(cid), "Banana Hell!!", TEXTCOLOR_WHITE_EXP)
                        doSendMagicEffect(item1pos,4)
   		end
   	elseif item.uid == 7101 then
   		queststatus = getPlayerStorageValue(cid,5491)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found Demon Legs.")
   			doPlayerAddItem(cid,2495,1)
   			setPlayerStorageValue(cid,5491,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7103 then
   		queststatus = getPlayerStorageValue(cid,5491)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found Golden Boots.")
   			doPlayerAddItem(cid,2646,1)
   			setPlayerStorageValue(cid,5491,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7103 then
   		queststatus = getPlayerStorageValue(cid,5491)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found Golden Boots.")
   			doPlayerAddItem(cid,2646,1)
   			setPlayerStorageValue(cid,5491,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
