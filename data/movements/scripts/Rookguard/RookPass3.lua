function onStepIn(cid, item, position, fromPosition)

	Voc = getPlayerVocation(cid)
	if item.uid == 9005 then

	if Voc == 0 then
	doSendMagicEffect(getPlayerPosition(cid),12)
        doPlayerSendTextMessage(cid,19,"Welcome to other side of the bridge.")
        doPlayerSendTextMessage(cid,23,"Welcome to other side of the bridge.")
	end
	end
	end