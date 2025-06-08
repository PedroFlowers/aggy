local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 26)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 1.3, -30, 2.0, 0)


function onCastSpell(cid, var)
doPlayerAddMana(cid, math.random(600000, 600000))
doPlayerAddHealth(cid, math.random(250, 700))
doSendAnimatedText(getPlayerPosition(cid), "Full Mana!.", TEXTCOLOR_RED)
	return doCombat(cid, combat, var)
end