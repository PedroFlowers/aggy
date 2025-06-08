local combat0 = createCombatObject()
setCombatParam(combat0, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat0, COMBAT_PARAM_EFFECT, 9)
setCombatFormula(combat0, COMBAT_FORMULA_LEVELMAGIC, 0, -30000, 0, -40000)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat0, condition)

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, 0, -40000, 0, -50000)
 
local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -50000, 0, -60000)


local arr0 = {
{0, 0, 0, 0, 0},
{0, 1, 1, 1, 0},
{0, 1, 2, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 0, 0, 0}
}

local arr1 = {
{0, 0, 0, 0, 0, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 2, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 0, 0, 0, 0, 0},
}

local arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 2, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area0 = createCombatArea(arr0)
local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)

setCombatArea(combat0, area0)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)

local function onCastSpell0(parameters)
    doCombat(parameters.cid, combat0, parameters.var)
end


local function onCastSpell1(parameters)
    doCombat(parameters.cid, combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, combat2, parameters.var)
end
 
function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell0, 100, parameters)
addEvent(onCastSpell1, 250, parameters)
addEvent(onCastSpell2, 500, parameters)
end