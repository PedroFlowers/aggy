local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_THROWINGKNIFE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_THROWINGKNIFE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -190000, 0, -260000)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end
