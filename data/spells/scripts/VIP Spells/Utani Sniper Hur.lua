local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 400000)
setConditionFormula(condition, 4.4, -300, 4.4, -300)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
