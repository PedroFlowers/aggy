local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 0, 0, 0)

function onUse(cid, item, frompos, item2, topos)

Voc = getPlayerVocation(cid)
PlayerLevel = getPlayerLevel(cid)

if PlayerLevel == 8 and Voc == 1 then
doPlayerSetVocation(cid, 27)
doPlayerSendTextMessage(cid,22,"A força dos Templares agora acompanham o nobre Templar Wyzard.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)

elseif PlayerLevel == 8 and Voc == 2 then
doPlayerSetVocation(cid, 28)
doPlayerSendTextMessage(cid,22,"A força dos Templares agora acompanham o nobre Templar Cleric.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)

elseif PlayerLevel == 8 and Voc == 3 then
doPlayerSetVocation(cid, 26)
doPlayerSendTextMessage(cid,22,"A força dos Templares agora acompanham o nobre Templar Ranger.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)

elseif PlayerLevel == 8 and Voc == 4 then
doPlayerSetVocation(cid, 25)
doPlayerSendTextMessage(cid,22,"A força dos Templares agora acompanham o nobre Templar Slayer.")
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)
else
doPlayerSendTextMessage(cid,22,"Desculpe, você não tem vocação necessaria ou nível suficiente.")
end
end