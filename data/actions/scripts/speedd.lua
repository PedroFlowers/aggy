function onUse(cid, item, frompos, item2, topos)
local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 100000)
--setConditionParam(condition, CONDITION_PARAM_SPEED, -200)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat, condition)

doSendAnimatedText(getPlayerPosition(cid), "-Speed", TEXTCOLOR_WHITE_EXP)
doSendMagicEffect(item1pos,4)

end