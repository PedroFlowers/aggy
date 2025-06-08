local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -2700, 0, -3200)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -4000, 0, -5000)

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 4, -1500)
setCombatCondition(combat2, condition)

function onUseWeapon(cid, var)
rand = math.random(90,100)
if rand == 99 then
doCombat(cid, combat2, var)
doPlayerSay(cid, "Saruman!!",16)
else
doCombat(cid, combat, var)
end
end

