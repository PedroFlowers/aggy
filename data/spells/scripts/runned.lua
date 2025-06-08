local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 83)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 30000)
setConditionFormula(condition, 0.7, -96, 0.7, -96)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
