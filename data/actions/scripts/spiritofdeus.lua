local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 0, 0, 0)

-- Tabela de promoções
local promotions = {
    [5] = { newVocation = 9, name = "Warlock" }, 
    [6] = { newVocation = 10, name = "Healer" },
    [7] = { newVocation = 11, name = "Sniper" },
    [8] = { newVocation = 12, name = "Divine Hero" }
}

local function Kick(cid)
    if isPlayer(cid) then
        doRemoveCreature(cid)
    end
end

function onUse(cid, item, frompos, item2, topos)
    local voc = getPlayerVocation(cid)
    local level = getPlayerLevel(cid)
    local promo = promotions[voc]

    if not promo then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Vocação inválida.")
        return true
    end

    if level < 1000 then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Você precisa ter pelo menos nível 1000 para evoluir.")
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
