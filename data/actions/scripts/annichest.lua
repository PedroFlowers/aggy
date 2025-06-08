-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5006 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Gladiator shield.")
   			doPlayerAddItem(cid,13564,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
                        doTeleportThing(cid,{x=50, y=51, z=7})
                        doSendAnimatedText(getPlayerPosition(cid), "Woop!!", TEXTCOLOR_WHITE_EXP)
                        doSendMagicEffect(item1pos,4)
   		end
   	elseif item.uid == 5007 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Gladiator helmet .")
   			doPlayerAddItem(cid,13555,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
                        doTeleportThing(cid,{x=50, y=51, z=7})
                        doSendAnimatedText(getPlayerPosition(cid), "Woop!!", TEXTCOLOR_WHITE_EXP)
                        doSendMagicEffect(item1pos,4)
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5008 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a gladiator armor.")
   			doPlayerAddItem(cid,13584,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
                        doTeleportThing(cid,{x=50, y=51, z=7})
                        doSendAnimatedText(getPlayerPosition(cid), "Woop!!", TEXTCOLOR_WHITE_EXP)
                        doSendMagicEffect(item1pos,4)
   		end
   	elseif item.uid == 5009 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a gladiator legs.")
   			doPlayerAddItem(cid,13602,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
                        doTeleportThing(cid,{x=50, y=51, z=7})
                        doSendAnimatedText(getPlayerPosition(cid), "Woop!!", TEXTCOLOR_WHITE_EXP)
                        doSendMagicEffect(item1pos,4)
   		end
	else
		return 0
   	end

   	return 1
end
