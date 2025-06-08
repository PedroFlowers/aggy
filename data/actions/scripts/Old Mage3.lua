local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 0, 0, 0)

-- Promoções Supreme - Final
local supremeFinalPromotions = {
    [17] = { newVocation = 21, name = "Old Mage" },
    [18] = { newVocation = 21, name = "Old Mage" },
    [19] = { newVocation = 22, name = "Justiceiro" },
    [20] = { newVocation = 22, name = "Justiceiro" }
}

local function Kick(cid)
    if isPlayer(cid) then
        doRemoveCreature(cid)
    end
end


function onUse(cid, item, frompos, item2, topos)
    local voc = getPlayerVocation(cid)
    local level = getPlayerLevel(cid)
    local promo = supremeFinalPromotions[voc]

    if not promo then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Sua vocação atual não pode ser promovida.")
        return true
    end

    if level < 5000 then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Você precisa ter pelo menos nível 5000 para evoluir.")
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
