local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 87)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -290000, 0, -340000)


function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 83)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -350000, 0, -360000)

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 30, -20000)
setCombatCondition(combat2, condition)

function onUseWeapon(cid, var)
rand = math.random(87,100)
if rand == 99 then
doCombat(cid, combat2, var)
doSendAnimatedText(getPlayerPosition(cid), "Darkside detona mas Darkcaster humilha!", TEXTCOLOR_BLACK)
doPlayerSay(cid, "Darkcaster!",16)
else
doCombat(cid, combat, var)
end
end