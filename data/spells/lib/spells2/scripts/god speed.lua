local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 9999999)
setConditionFormula(condition, 0, 9999, 0, 9999)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	doCombat(cid, combat, var)
end
