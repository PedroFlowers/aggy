local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -70000, 0, -100000)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -120000, 0, -130000)

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 6, -12000)
setCombatCondition(combat2, condition)

function onUseWeapon(cid, var)
rand = math.random(90,100)
if rand == 99 then
doCombat(cid, combat2, var)
doSendAnimatedText(getPlayerPosition(cid), "Hades!", TEXTCOLOR_LIGHTGREY)
doPlayerSay(cid, "Hades!!",16)
else
doCombat(cid, combat, var)
end
end