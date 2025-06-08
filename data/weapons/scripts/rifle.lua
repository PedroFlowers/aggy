local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 17)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -3000, 0, -4100)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 17)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -4050, 0, -5500)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 1)
setConditionParam(condition, CONDITION_PARAM_SPEED, -4)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat2, condition)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,4)
min = -((skill*33)+level)
max = -((skill*35)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(cid, var)
rand = math.random(1,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "rifle!", TEXTCOLOR_LIGHTGREY)
doPlayerSay(cid, "Fell My Fury!!",16)
doPlayerAddHealth(cid,2500)
doCombat(cid, combat2, var)
end
rand = math.random(98,100)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "rifle!", TEXTCOLOR_LIGHTGREY)
doPlayerSay(cid, "Fell My Fury!!",16)
doPlayerAddHealth(cid,2500)
rand = math.random(90,100)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end