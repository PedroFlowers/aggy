-- Script 100% by Colandus!

-- >>CONFIG<< --
local HEAL_DELAY = 2000 -- How big should the delay be between each heal? Milliseconds > 1000 = 1 second.
local HEAL_TIMES = 200 -- How many times shall it heal you each time you use it?
-- >>CONFIG<< --

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, 100, 0, 100)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end

function onCastSpell(cid, var)
	doTargetCombatCondition(0, cid, exhaust, CONDITION_NONE)
	local function onCastSpell1(parameters)
		doCombat(parameters.cid, parameters.combat, parameters.var)
		doSendAnimatedText(getPlayerPosition(cid), "Regen", TEXTCOLOR_WHITE_EXP)
	end
	
	local parameters = {cid = cid, combat = combat, var = var}
	for i = 0, math.max(HEAL_TIMES, 1) - 1 do
		addEvent(onCastSpell1, HEAL_DELAY * i, parameters)
	end
	return LUA_NO_ERROR
end