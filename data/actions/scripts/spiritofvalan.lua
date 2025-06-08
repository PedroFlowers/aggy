local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 0, 0, 0)

-- Tabela de promoções
local promotions = {
    [1] = { newVocation = 5, name = "Wyzard" },
    [2] = { newVocation = 6, name = "Cleric" },
    [3] = { newVocation = 7, name = "Ranger" },
    [4] = { newVocation = 8, name = "Slayer" }
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
            "Vocacao Invalida.")
        return true
    end

    if level < 500 then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Voce precisa ter pelo menos nivel 500 para evoluir.")
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
