local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 0, 0, 0)

-- Promoções Sky
local skyPromotions = {
    [21] = { newVocation = 24, name = "Mage Of Sky" },
    [22] = { newVocation = 23, name = "Gladiator of Sky" },
}

local function Kick(cid)
    if isPlayer(cid) then
        doRemoveCreature(cid)
    end
end


function onUse(cid, item, frompos, item2, topos)
    local voc = getPlayerVocation(cid)
    local level = getPlayerLevel(cid)
    local promo = skyPromotions[voc]

    if not promo then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Sua vocação atual não pode ser promovida.")
        return true
    end

    if level < 8000 then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Você precisa ter pelo menos nível 8000 para evoluir.")
        return true
    end

 -- Promoção concedida
    doPlayerSetVocation(cid, promo.newVocation)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
        "A forca dos Semi-Deuses agora acompanham o nobre " .. promo.name .. ".")
    doPlayerAddExp(cid, -10000000000)
    doCreatureChangeMaxHealth(cid, 185)
    doCreatureAddHealth(cid, 185)
    doPlayerChangeMaxMana(cid, 35)
    doPlayerAddMana(cid, 35)
    doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_BLUE)
    doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
    doRemoveItem(item.uid, 1)
    Kick(cid)


    return true
end
