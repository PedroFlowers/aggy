--[[ SCRIPT BY: MarcelloMkez ]]

function onUse(cid, item, pos, item2, topos)

config = {

ptemp ="no",      --[[ Teleportar para ciade principal  "yes ou no". ]]
townp ="yes",      --[[ Teleportar para Cidade onde o player mora,  "yes ou no". ]]
rmvitem ="yes",      --[[ Remover item quando for usado?  "yes ou no". ]]
vip ="yes",             --[[ Precisa ser Premium Account para usar o item?  "yes ou no" ]]
batlle ="yes",            --[[ Precisa estar sem Batlle para usar o item? "yes ou no "]] 
possibilidade = 10 ,         --[[ Possibilidade do player ser teleportado em porcentagem. ]] 
princ = {x=1000, y=1000, z=7},      --[[ Posição da Cidade Principal. ]]
pz ="yes"                  --[[ Precisa estar em Protection Zone para Usar o Magic Teleport? "yes ou no"]]
}

local p = getPlayerTown(cid)
local townpos = getTownTemplePosition(p)
local cityname = getTownName(p)
local chance = math.random(1, 100)  --[[ de 1 a 100 % de chance, Não mude. ]]

local msgp ="~ "..getPlayerName(cid).." Foi Teleportado para Cidade Principal. ~"  
local msgt ="~ "..getPlayerName(cid).." Foi Teleportado para "..cityname..". ~"   
local fail ="'O Teleport Falhou.'" 

if(config.vip =="yes") and not isPremium(cid) then
doPlayerSendCancel(cid, "Você precisa ser Premium Account Para usar o Teleport Magico.")
return 1

elseif (config.batlle == "yes") and (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then
doPlayerSendCancel(cid, "Você precisa estar sem o batlle para usar o Teleport Magico.")
return 1

elseif (config.pz =="yes") and (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
doPlayerSendCancel(cid, "Você precisa estar em Protection Zone para usar o Teleport Magico.")
return 1

elseif (config.ptemp =="yes" and config.townp =="yes") then
doPlayerPopupFYI(cid, "'ERROR': Não é Possivel teleportar para duas cidades ao mesmo tempo.")  return 1
--[[ Menssagem quando o player marcar 'yes' para as duas opçoes de teleport. ]]

elseif chance >= 1 and chance <= config.possibilidade then
doCreatureSay(cid, fail, TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
return 1

elseif(config.ptemp == "yes") then
doTeleportThing(cid, config.princ)
doCreatureSay(cid, msgp, TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
return 1

elseif(config.townp == "yes") then
doTeleportThing(cid, townpos)
doCreatureSay(cid, msgt, TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
return 1
end

if(config.rmvitem =="yes") then
doRemoveItem(item.uid, 1)
end

return TRUE


end