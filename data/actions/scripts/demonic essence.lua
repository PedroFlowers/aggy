local blood = createConditionObject(CONDITION_OUTFIT)
setConditionParam(blood, CONDITION_PARAM_TICKS, 50000)
addOutfitCondition(blood, 0, 12, 0, 78, 0, 81)
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 6500 then
doPlayerAddMana(cid, math.random(7000, 7000))
doPlayerAddHealth(cid, math.random(7000,7000))
doSendMagicEffect(frompos,16)
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doPlayerSay(cid,"MP, MP! up",16)
doPlayerSendTextMessage(cid, 20, 'você usou Demonic essence.')
doRemoveItem(item.uid,1)

end
end