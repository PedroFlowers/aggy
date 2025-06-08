local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 82)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, 0, -40000, 0, -70000)
 
local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 51)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -40000, 0, -70000)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 82)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, 0, -40000, 0, -70000)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 51)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, 0, -40000, 0, -70000)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 82)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, 0, -40000, 0, -70000)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 51)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, 0, -40000, 0, -70000)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 83)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, 0, -40000, 0, -70000)

local combat8 = createCombatObject()
setCombatParam(combat8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat8, COMBAT_PARAM_EFFECT, 82)
setCombatFormula(combat8, COMBAT_FORMULA_LEVELMAGIC, 0, -40000, 0, -70000)


local arr1 = {
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 2, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0},
}

local arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 3, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr4 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 3, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr5 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr6 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr7 = {
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0},
{0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0},
{0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0},
{0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0},
{0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0},
{0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
}

local arr8 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 3, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
local area5 = createCombatArea(arr5)
local area6 = createCombatArea(arr6)
local area7 = createCombatArea(arr7)
local area8 = createCombatArea(arr8)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)
setCombatArea(combat5, area5)
setCombatArea(combat6, area6)
setCombatArea(combat7, area7)
setCombatArea(combat8, area8)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, combat2, parameters.var)
end

local function onCastSpell3(parameters)
    doCombat(parameters.cid, combat3, parameters.var)
end

local function onCastSpell4(parameters)
    doCombat(parameters.cid, combat4, parameters.var)
end

local function onCastSpell5(parameters)
    doCombat(parameters.cid, combat5, parameters.var)
end

local function onCastSpell6(parameters)
    doCombat(parameters.cid, combat6, parameters.var)
end

local function onCastSpell7(parameters)
    doCombat(parameters.cid, combat7, parameters.var)
end

local function onCastSpell8(parameters)
    doCombat(parameters.cid, combat8, parameters.var)
end
 
function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 100, parameters)
addEvent(onCastSpell3, 300, parameters)
addEvent(onCastSpell4, 300, parameters)
addEvent(onCastSpell5, 500, parameters)
addEvent(onCastSpell6, 500, parameters)
addEvent(onCastSpell7, 700, parameters)
addEvent(onCastSpell8, 700, parameters)
end