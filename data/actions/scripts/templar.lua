local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 0, 0, 0)

-- Promoções Templares
local templarPromotions = {
    [1] = { newVocation = 27, name = "Templar Wyzard" },
    [2] = { newVocation = 28, name = "Templar Cleric" },
    [3] = { newVocation = 26, name = "Templar Ranger" },
    [4] = { newVocation = 25, name = "Templar Slayer" }
}

local function Kick(cid)
    if isPlayer(cid) then
        doRemoveCreature(cid)
    end
end


function onUse(cid, item, frompos, item2, topos)
    local voc = getPlayerVocation(cid)
    local level = getPlayerLevel(cid)
    local promo = templarPromotions[voc]

    if not promo then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Sua vocação atual não pode ser promovida.")
        return true
    end

    if level > 8 then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Você precisa ter no máximo nivel 8 para evoluir (Crie um personagem novo).")
        return true
    end

    doPlayerSetVocation(cid, promo.newVocation)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
        "A força dos Templares agora acompanham o nobre " .. promo.name .. ".")
    doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_BLUE)
    doRemoveItem(item.uid, 1)
    Kick(cid)

    return true
end
