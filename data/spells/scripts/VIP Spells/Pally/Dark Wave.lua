local combat0 = createCombatObject()
setCombatParam(combat0, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat0, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat0, COMBAT_FORMULA_LEVELMAGIC, 0, -100000, 0, -120000)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat0, condition)

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, 0, -100000, 0, -120000)
 
local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -100000, 0, -120000)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, 0, -100000, 0, -120000)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, 0, -100000, 0, -120000)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 4)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, 0, -100000, 0, -120000)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 4)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, 0, -100000, 0, -120000)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 4)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, 0, -100000, 0, -120000)

local arr0 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
}

local arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
}

local arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
}

local arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
}

local arr4 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
}

local arr5 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
}

local arr6 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0},
}

local arr7 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 0, 2, 0, 1, 0, 0, 0, 0},
}
 
local area0 = createCombatArea(arr0)
local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
local area5 = createCombatArea(arr5)
local area6 = createCombatArea(arr6)
local area7 = createCombatArea(arr7)

setCombatArea(combat0, area0)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)
setCombatArea(combat5, area5)
setCombatArea(combat6, area6)
setCombatArea(combat7, area7)

local function onCastSpell0(parameters)
    doCombat(parameters.cid, combat0, parameters.var)
end

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
 
function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell0, 100, parameters)
addEvent(onCastSpell1, 500, parameters)
addEvent(onCastSpell2, 1000, parameters)
addEvent(onCastSpell3, 1500, parameters)
addEvent(onCastSpell4, 2000, parameters)
addEvent(onCastSpell5, 2500, parameters)
addEvent(onCastSpell6, 3000, parameters)
addEvent(onCastSpell7, 3500, parameters)
 
end