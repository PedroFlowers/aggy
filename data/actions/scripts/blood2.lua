local blood = createConditionObject(CONDITION_OUTFIT)
setConditionParam(blood, CONDITION_PARAM_TICKS, 50000)
addOutfitCondition(blood, 0, 12, 0, 78, 175, 81)
function onUse(cid, item, frompos, item2, topos)


if item.itemid == 6558 then
doPlayerAddMana(cid, math.random(50000, 50000))
doPlayerAddHealth(cid, math.random(50000, 50000))
doSendMagicEffect(frompos,51) 
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doPlayerSay(cid,"MUAHAHAHA!",16)
doPlayerSendTextMessage(cid, 20, 'You Using Demoniac Concentrated Blood!.')
doRemoveItem(item.uid,1)

end
end