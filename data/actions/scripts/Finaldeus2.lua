local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 0, 0, 0)

function onUse(cid, item, frompos, item2, topos)

Voc = getPlayerVocation(cid)
PlayerLevel = getPlayerLevel(cid)

if PlayerLevel == 8 and Voc == 1 then
doPlayerSetVocation(cid, 17)
doPlayerSendTextMessage(cid,22,"A força dos Supreme Deuses agora acompanham o nobre Mago.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)

elseif PlayerLevel == 8 and Voc == 2 then
doPlayerSetVocation(cid, 18)
doPlayerSendTextMessage(cid,22,"A força dos Supreme Deuses agora acompanham o nobre Mago.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)

elseif PlayerLevel == 8 and Voc == 3 then
doPlayerSetVocation(cid, 19)
doPlayerSendTextMessage(cid,22,"A força dos Supreme Deuses agora acompanham o nobre Ranger.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)

elseif PlayerLevel == 8 and Voc == 4 then
doPlayerSetVocation(cid, 20)
doPlayerSendTextMessage(cid,22,"A força dos Supreme Deuses agora acompanham o nobre kina.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)
else
doPlayerSendTextMessage(cid,22,"Desculpe, você não tem vocação necessaria ou nível suficiente.")
end
end