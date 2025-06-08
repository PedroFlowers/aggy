function onStepOut(cid, item, position, fromPosition)
	addEvent(transformBack, 10000, {oldItemID = item.itemid, _position = position})
	if item.itemid == 6838 then
		doTransformItem(item.uid, 6583)
	else
		doTransformItem(item.uid, 6583)
	end
	return TRUE
end

function transformBack(parameters)
	parameters._position.stackpos = 0
	doTransformItem(getThingfromPos(parameters._position).uid, parameters.oldItemID)
	return TRUE
end