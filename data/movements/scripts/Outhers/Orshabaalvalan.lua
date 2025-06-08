----- Script by Luan ----
function onStepIn(cid, item, position, fromPosition)
---- Config ----
status = getPlayerStorageValue(cid,1236)
msg1 = "The Boss Comming."
msg3 = "The Boss Comming."
----------------

if item.actionid == 7351 and status == 0 then
doPlayerSendTextMessage(cid, 22, msg3)
	ors1pos = {x=496, y=258, z=13}
	doSummonCreature("Orshabaal", ors1pos)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
setPlayerStorageValue(cid,1236,1)
else
doPlayerSendTextMessage(cid, 22, msg1)
	ors1pos = {x=496, y=258, z=13}
	doSummonCreature("Orshabaal", ors1pos)
doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
setPlayerStorageValue(cid,1236,0)

end
end