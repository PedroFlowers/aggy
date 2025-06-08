function onStepIn(cid, item, position, fromPosition)

	Voc = getPlayerVocation(cid)
	if item.actionid == 7801 then

	if Voc == 25 then
	doTeleportThing(cid,{x=999, y=999, z=7})
	doSendMagicEffect(getPlayerPosition(cid),10)
        doPlayerSendTextMessage(cid,25,"So Pode Entrar GM Santhaurus!")
	doSendAnimatedText(getPlayerPosition(cid), "No Voc!", TEXTCOLOR_DARKRED)

	end
	end
	end