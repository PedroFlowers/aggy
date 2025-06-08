local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 18)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -220000, 0, -320000)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 86)
setCombatParam(combat2, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 18)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -220000, 0, -320000)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 100000)
setConditionParam(condition, CONDITION_PARAM_SPEED, -300000)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat2, condition)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,4)
min = -((skill*96)+level)
max = -((skill*104)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 30, -22000)
setCombatCondition(combat2, condition)

function onUseWeapon(cid, var)
rand = math.random(1,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Chunin", TEXTCOLOR_RED)
doPlayerAddHealth(cid,1000)
doCombat(cid, combat2, var)
end
rand = math.random(98,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Chunin", TEXTCOLOR_RED)
doPlayerAddHealth(cid,1000)
rand = math.random(90,100)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end