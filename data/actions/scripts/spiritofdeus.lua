local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 0, 0, 0)

function onUse(cid, item, frompos, item2, topos)

Voc = getPlayerVocation(cid)
PlayerLevel = getPlayerLevel(cid)

if PlayerLevel == 8 and Voc == 1 then
doPlayerSetVocation(cid, 9)
doPlayerSendTextMessage(cid,22,"A for�a dos Semi-Deuses agora acompanham o nobre Dark Wyzard.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)

elseif PlayerLevel == 8 and Voc == 2 then
doPlayerSetVocation(cid, 10)
doPlayerSendTextMessage(cid,22,"A for�a dos Semi-Deuses agora acompanham o nobre Elemetal Cleric.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)

elseif PlayerLevel == 8 and Voc == 3 then
doPlayerSetVocation(cid, 11)
doPlayerSendTextMessage(cid,22,"A for�a dos Semi-Deuses agora acompanham o nobre Elven Ranger.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)

elseif PlayerLevel == 8 and Voc == 4 then
doPlayerSetVocation(cid, 12)
doPlayerSendTextMessage(cid,22,"A for�a dos Semi-Deuses agora acompanham o nobre Dragon Slayer.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)
else
doPlayerSendTextMessage(cid,22,"Desculpe, voc� n�o tem voca��o necessaria ou n�vel suficiente.")
end
end