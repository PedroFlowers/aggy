local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
 setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 35)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 31)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -2800, 0, -3200)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 100000)
--setConditionParam(condition, CONDITION_PARAM_SPEED, -200)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat, condition)


function onUseWeapon(cid, var)
doPlayerSay(cid, "Ops Its hurt?!",16)
doPlayerAddHealth(cid, math.random(400, 400))
doSendAnimatedText(getPlayerPosition(cid), "Critical!", TEXTCOLOR_LIGHTGREY)
	return doCombat(cid, combat, var)
end