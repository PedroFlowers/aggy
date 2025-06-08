local combat0 = createCombatObject()
setCombatParam(combat0, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat0, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatFormula(combat0, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -120000)

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)
 
local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)
 
local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -120000)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 49)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)

local combat8 = createCombatObject()
setCombatParam(combat8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat8, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat8, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)

local combat9 = createCombatObject()
setCombatParam(combat9, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat9, COMBAT_PARAM_EFFECT, 65)
setCombatFormula(combat9, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)

local combat10 = createCombatObject()
setCombatParam(combat10, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat10, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatFormula(combat10, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)

local combat11 = createCombatObject()
setCombatParam(combat11, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat11, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat11, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -120000)

local combat12 = createCombatObject()
setCombatParam(combat12, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat12, COMBAT_PARAM_EFFECT, 53)
setCombatFormula(combat12, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)

local combat13 = createCombatObject()
setCombatParam(combat13, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat13, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatFormula(combat13, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -110000)

local combat14 = createCombatObject()
setCombatParam(combat14, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat14, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatFormula(combat14, COMBAT_FORMULA_LEVELMAGIC, 0, -90000, 0, -120000)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat0, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat1, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat2, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat3, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat4, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat5, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat6, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat7, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat8, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat9, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat10, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat11, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat12, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat13, condition)

local condition = createConditionObject(CONDITION_EMO)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1000, 15, -20000)
setCombatCondition(combat14, condition)

local arr0 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr4 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr5 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr6 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr7 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 3, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr8 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 3, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr9 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 3, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr10 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 3, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}


local arr11 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 3, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr12 = {
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 3, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
}

local arr13 = {
{0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0},
}

local arr14 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

local area0 = createCombatArea(arr0)
local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
local area5 = createCombatArea(arr5)
local area6 = createCombatArea(arr6)
local area7 = createCombatArea(arr7)
local area8 = createCombatArea(arr8)
local area9 = createCombatArea(arr9)
local area10 = createCombatArea(arr10)
local area11 = createCombatArea(arr11)
local area12 = createCombatArea(arr12)
local area13 = createCombatArea(arr13)
local area14 = createCombatArea(arr14)

setCombatArea(combat0, area0)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)
setCombatArea(combat5, area5)
setCombatArea(combat6, area6)
setCombatArea(combat7, area7)
setCombatArea(combat8, area8)
setCombatArea(combat9, area9)
setCombatArea(combat10, area10)
setCombatArea(combat11, area11)
setCombatArea(combat12, area12)
setCombatArea(combat13, area13)
setCombatArea(combat14, area14)

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

local function onCastSpell8(parameters)
    doCombat(parameters.cid, combat8, parameters.var)
end

local function onCastSpell9(parameters)
    doCombat(parameters.cid, combat9, parameters.var)
end

local function onCastSpell10(parameters)
    doCombat(parameters.cid, combat10, parameters.var)
end

local function onCastSpell11(parameters)
    doCombat(parameters.cid, combat11, parameters.var)
end

local function onCastSpell12(parameters)
    doCombat(parameters.cid, combat12, parameters.var)
end

local function onCastSpell13(parameters)
    doCombat(parameters.cid, combat13, parameters.var)
end

local function onCastSpell14(parameters)
    doCombat(parameters.cid, combat14, parameters.var)
end
 
function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell0, 100, parameters)
addEvent(onCastSpell1, 300, parameters)
addEvent(onCastSpell2, 600, parameters)
addEvent(onCastSpell3, 900, parameters)
addEvent(onCastSpell4, 1200, parameters)
addEvent(onCastSpell5, 1500, parameters)
addEvent(onCastSpell6, 1700, parameters)
addEvent(onCastSpell7, 2000, parameters)
addEvent(onCastSpell8, 2300, parameters)
addEvent(onCastSpell9, 2600, parameters)
addEvent(onCastSpell10, 2900, parameters)
addEvent(onCastSpell11, 3200, parameters)
addEvent(onCastSpell12, 3500, parameters)
addEvent(onCastSpell13, 3600, parameters)
addEvent(onCastSpell14, 3900, parameters)
end