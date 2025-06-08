local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 83)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 100, -30, 2000, 0)


function onCastSpell(cid, var)
doPlayerAddMana(cid, math.random(0, 0))
doPlayerAddHealth(cid, math.random(140000, 140000))
doSendAnimatedText(getPlayerPosition(cid), "T. Uh", TEXTCOLOR_DARKRED)
	return doCombat(cid, combat, var)
end