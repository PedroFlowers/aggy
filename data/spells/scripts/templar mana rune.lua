local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 83)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 2.3, -30, 2.5, 0)


function onCastSpell(cid, var)
doPlayerAddMana(cid, math.random(850000, 850000))
doPlayerAddHealth(cid, math.random(250, 700))
doSendAnimatedText(getPlayerPosition(cid), "T. Mana!.", TEXTCOLOR_RED)
	return doCombat(cid, combat, var)
end