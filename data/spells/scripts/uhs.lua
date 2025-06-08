local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 24)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 100, -30, 2000, 0)


function onCastSpell(cid, var)
doPlayerAddMana(cid, math.random(0, 0))
doPlayerAddHealth(cid, math.random(70000, 70000))
doSendAnimatedText(getPlayerPosition(cid), "Full Life", TEXTCOLOR_RED)
	return doCombat(cid, combat, var)
end