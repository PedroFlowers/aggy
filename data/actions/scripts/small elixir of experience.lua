local condition = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)

function onUse(cid, item, frompos, item2, topos)

EXP0 = math.random(10000,20000)
EXP1 = math.random(30000,40000)
EXP2 = math.random(50000,60000)
EXP3 = math.random(70000,80000)
EXP4 = math.random(90000,100000)
EXP5 = math.random(110000,120000)
EXP6 = math.random(130000,140000)
EXP7 = math.random(150000,160000)
EXP8 = math.random(170000,180000)
EXP9 = math.random(190000,200000)
EXP10 = math.random(210000,320000)

if getPlayerLevel(cid) <= 7 then
doPlayerSendTextMessage(cid,20,'Desculpe, voc� n�o tem n�vel suficiente.')
elseif getPlayerSoul(cid) >= 100 then

PlayerLevel = getPlayerLevel(cid)

if PlayerLevel < 50 then
doPlayerAddExp(cid,EXP0)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP0 .. ' de experi�ncia, B�nus 0.')
doSendAnimatedText(getPlayerPosition(cid),EXP0, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 100 then
doPlayerAddExp(cid,EXP1)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP1 .. ' de experi�ncia, B�nus 1.')
doSendAnimatedText(getPlayerPosition(cid),EXP1, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 150 then
doPlayerAddExp(cid,EXP2)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP2 .. ' de experi�ncia, B�nus 2.')
doSendAnimatedText(getPlayerPosition(cid),EXP2, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 200 then
doPlayerAddExp(cid,EXP3)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP3 .. ' de experi�ncia, B�nus 3.')
doSendAnimatedText(getPlayerPosition(cid),EXP3, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 250 then
doPlayerAddExp(cid,EXP4)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP4 .. ' de experi�ncia, B�nus 4.')
doSendAnimatedText(getPlayerPosition(cid),EXP4, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 300 then
doPlayerAddExp(cid,EXP5)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP5 .. ' de experi�ncia, B�nus 5.')
doSendAnimatedText(getPlayerPosition(cid),EXP5, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 350 then
doPlayerAddExp(cid,EXP6)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP6 .. ' de experi�ncia, B�nus 6.')
doSendAnimatedText(getPlayerPosition(cid),EXP6, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 400 then
doPlayerAddExp(cid,EXP7)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP7 .. ' de experi�ncia, B�nus 7.')
doSendAnimatedText(getPlayerPosition(cid),EXP7, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 450 then
doPlayerAddExp(cid,EXP8)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP8 .. ' de experi�ncia, B�nus 8.')
doSendAnimatedText(getPlayerPosition(cid),EXP8, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 500 then
doPlayerAddExp(cid,EXP9)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP9 .. ' de experi�ncia, B�nus 9.')
doSendAnimatedText(getPlayerPosition(cid),EXP9, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)

elseif PlayerLevel < 1050 then
doPlayerAddExp(cid,EXP10)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid,20,'Voc� recebeu ' .. EXP10 .. ' de experi�ncia, B�nus 10.')
doSendAnimatedText(getPlayerPosition(cid),EXP10, 179)
doPlayerAddSoul(cid,-100)
doRemoveItem(item.uid,1)
end
else
doPlayerSendTextMessage(cid,20,'Desculpe, voc� n�o tem n�mero suficiente de almas.')
end
end