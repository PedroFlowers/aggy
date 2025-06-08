local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 0, 0, 0)

-- Promoções Supreme
local supremePromotions = {
    [15] = { newVocation = 17, name = "Zeus" },
    [14] = { newVocation = 18, name = "Hades" },
    [16] = { newVocation = 19, name = "Ninja" },
    [13] = { newVocation = 20, name = "Mercenario" }
}

local function Kick(cid)
    if isPlayer(cid) then
        doRemoveCreature(cid)
    end
end


function onUse(cid, item, frompos, item2, topos)
    local voc = getPlayerVocation(cid)
    local level = getPlayerLevel(cid)
    local promo = supremePromotions[voc]

    if not promo then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Sua vocação atual não pode ser promovida.")
        return true
    end

    if level < 3500 then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Você precisa ter pelo menos nível 3500 para evoluir.")
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
