local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 81)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 9000000)
setConditionFormula(condition, 0, 90000000, 0, 9000000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	doCombat(cid, combat, var)
end
