local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.2, -30, -0.4, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -0.3, -100, -0.6, 0)

local arr = {
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 3, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}
}
local arr2 = {
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 3, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}
}

local area = createCombatArea(arr)
local area2 = createCombatArea(arr2)
setCombatArea(combat, area)
setCombatArea(combat2, area2)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat, parameters.var)
end
local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end

function onCastSpell(cid, var)

local parameters = { cid = cid, var = var, combat = combat, combat2 = combat2 }

addEvent(onCastSpell1, 50, parameters)
addEvent(onCastSpell2, 200, parameters)

end