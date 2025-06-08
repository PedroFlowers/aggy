local Chronos = createConditionObject(CONDITION_OUTFIT)
setConditionParam(Chronos, CONDITION_PARAM_TICKS, 30000)
addOutfitCondition(Chronos, 0, 12, 114, 114, 114, 95)

local Kazard = createConditionObject(CONDITION_OUTFIT)
setConditionParam(Kazard, CONDITION_PARAM_TICKS, 30000)
addOutfitCondition(Kazard, 0, 262, 0, 78, 0, 81)

local Hazus = createConditionObject(CONDITION_OUTFIT)
setConditionParam(Hazus, CONDITION_PARAM_TICKS, 30000)
addOutfitCondition(Hazus, 0, 35, 0, 78, 0, 81)

local Muted = createConditionObject(CONDITION_MUTED)
setConditionParam(Muted, CONDITION_PARAM_TICKS, 30000 * 1000)

local Speed = createConditionObject(CONDITION_HASTE)
setConditionParam(Speed, CONDITION_PARAM_TICKS, 30000)
setConditionFormula(Speed, 0, 1000, 0, 1000)

local Health = createConditionObject(CONDITION_REGENERATION)
setConditionParam(Health, CONDITION_PARAM_TICKS, 30000)
setConditionParam(Health, CONDITION_PARAM_HEALTHGAIN, 5000)
setConditionParam(Health, CONDITION_PARAM_HEALTHTICKS, 1)
setConditionParam(Health, CONDITION_PARAM_MANAGAIN, 5000) 
setConditionParam(Health, CONDITION_PARAM_MANATICKS, 1)

function onUse(cid, item, frompos, item2, topos)

Blood = math.random(1,3)
HP = math.random(60000,60000)
MP = math.random(60000,60000)

if getPlayerSoul(cid) >= 30 then

if Blood == 1 then
doPlayerAddHealth(cid,HP)
doPlayerAddMana(cid,MP)
doTargetCombatCondition(0, cid, Chronos, CONST_ME_MAGIC_RED)
doTargetCombatCondition(0, cid, Health, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,"Você Min Invocou, Agora Você é Um Chronos.")
doPlayerSay(cid, "MUAHAHAHA!", TALKTYPE_ORANGE_1)
doRemoveItem(item.uid,1)

elseif Blood == 2 then
doPlayerAddHealth(cid,HP)
doPlayerAddMana(cid,MP)
doTargetCombatCondition(0, cid, Kazard, CONST_ME_MAGIC_RED)
doTargetCombatCondition(0, cid, Health, CONST_ME_MAGIC_RED)
doTargetCombatCondition(0, cid, Speed, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,"Você Min Invocou, Agora Você é Um Kazard.")
doPlayerSay(cid, "MUAHAHAHA!", TALKTYPE_ORANGE_1)
doRemoveItem(item.uid,1)

elseif Blood == 3 then
doPlayerAddHealth(cid,HP)
doPlayerAddMana(cid,MP)
doTargetCombatCondition(0, cid, Hazus, CONST_ME_MAGIC_RED)
doTargetCombatCondition(0, cid, Health, CONST_ME_MAGIC_RED)
doTargetCombatCondition(0, cid, Muted, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,"Você Min Invocou, Agora Você é Um Hazus.")
doPlayerSay(cid, "MUAHAHAHA!", TALKTYPE_ORANGE_1)
doRemoveItem(item.uid,10)
end
else
doPlayerSendTextMessage(cid,20,"Desculpe, vocé não tem 30 almas para usa esse Blood Of God\'s.")
end
end