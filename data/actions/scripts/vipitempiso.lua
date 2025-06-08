function onUse(cid,item)

local pos = {x=729, y=1186, z=7} -- Posição para onde o player vip sera teleportado

if getVipDays(cid) >= 1 then -- Maior ou igual vip days
if getPlayerLevel(cid) >= 120 then -- Level para usar o item, mesmo sendo vip;
doTeleportThing(cid, pos)
doPlayerSendTextMessage(cid, 22, "Seja Bem-Vindo a Area Vip. Você ainda tem "..getVipDays(cid).." dia(s) de vip") -- Mensagem ao usar o item
doSendMagicEffect(getCreaturePosition(cid), 10) -- Efeito Magico
else
doPlayerSendCancel(cid, "Você precisa do level 120 para passar.") -- Mensagem quando o player for vip e nao tiver level
end
else
doPlayerSendCancel(cid, "Somente VIP accounts pode usar esse item. Você tem ".. getVipDays(cid) .." dia(s) de vip.") -- Mensagem para nao vips
end

end