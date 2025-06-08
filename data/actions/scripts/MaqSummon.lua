function onUse(cid, item, fromPos, itemEx, toPos)

-- [[INICIO CONFIG - Beyond Sky]]
monstros =
{
[1] = {chance = 30, name = "Demon"},                             --[[Monstro do shirine fire e item fire]]
[2] = {chance = 30, name = "Fire Elemental"},           --[[Monstro do shirine fire e item fire]]
[3] = {chance = 30, name = "Hellfire Fighter"},   --[[Monstro do shirine fire e item fire]]
[4] = {chance = 10, name = "Sauron"},                     --[[Monstro do shirine fire e item fire]]
[5] = {chance = 30, name = "Saruman"},     --[[Monstro do shirine ice e item ice]]
[6] = {chance = 30, name = "Frost Dragon"},               --[[Monstro do shirine ice e item ice]]
[7] = {chance = 30, name = "First General"},           --[[Monstro do shirine ice e item ice]]
[8] = {chance = 10, name = "Second General"},                           --[[Monstro do shirine ice e item ice]]
[9] = {chance = 30, name = "Third General"},                             --[[Monstro do shirine tera e item tera]]
[10] = {chance = 30, name = "Juggernaut"},                 --[[Monstro do shirine tera e item tera]]
[11] = {chance = 30, name = "Hydra"},                           --[[Monstro do shirine tera e item tera]]
[12] = {chance = 10, name = "Fire Balrog"}, --[[Monstro do shirine tera e item tera]]
[13] = {chance = 30, name = "Minotaur Mage"},           --[[Monstro do shirine energy e item energ]]
[14] = {chance = 30, name = "Dragon Lord"},   --[[Monstro do shirine energy e item energ]]
[15] = {chance = 30, name = "Dragon"},     --[[Monstro do shirine energy e item energ]]
[16] = {chance = 10, name = "Energy Balrog"}                     --[[Monstro do shirine energy e item energ]]
}

local uniqid = 9999 --[[UNIQUE ID DA ALAVANCA - Beyond Sky]]

local ItemIdFire = 6550           --[[Item do shrine Fire]]
local ItemIdIce = 6551             --[[Item do shrine Ice]]
local ItemIdTera = 6549           --[[Item do shrine Tera]]
local ItemIdEnergy = 6548               --[[Item do shrine Energy]]

local PosNameFire = {x=1683, y=1329, z=7}                --[[Pos do monster da shrine Fire]]
local PosNameIce = {x=1685, y=1330, z=7}                  --[[Pos do monster da shrine Ice]]
local PosNameTera = {x=1684, y=1331, z=7}                --[[Pos do monster da shrine Tera]]
local PosNameEnergy = {x=1683, y=1333, z=7}        --[[Pos do monster da shrine Energy]]

local PosItem = {x=1683, y=1327, z=7, stackpos = 255}     --[[Posição do item que vai ser preciso]]
local getitem = getThingfromPos(PosItem)
-- [[FIM CONFIG - Beyond Sky]]

        for i = 1, 4 do
                if item.uid == uniqid and getitem.itemid == ItemIdFire and item.itemid == 9825 and (monstros[i].chance >= math.random(1, 100)) then
doSummonCreature(monstros[i].name, PosNameFire)
doRemoveItem(getitem.uid,1)
doCreatureSay(cid, "A máquina de summon criou um "..monstros[i].name..".", TALKTYPE_ORANGE_1)
doSendMagicEffect(PosItem, 13)  

elseif item.uid == uniqid and getitem.itemid == ItemIdIce and item.itemid == 9825 and (monstros[i+4].chance >= math.random(1, 100)) then
   doSummonCreature(monstros[i+4].name, PosNameIce)
doRemoveItem(getitem.uid,1)
doCreatureSay(cid, "A máquina de summon criou um "..monstros[i+4].name..".", TALKTYPE_ORANGE_1)
doSendMagicEffect(PosItem, 13)  

elseif item.uid == uniqid and getitem.itemid == ItemIdTera and item.itemid == 9825 and (monstros[i+8].chance >= math.random(1, 100)) then
                        doSummonCreature(monstros[i+8].name, PosNameTera)
doRemoveItem(getitem.uid,1)
doCreatureSay(cid, "A máquina de summon criou um "..monstros[i+8].name..".", TALKTYPE_ORANGE_1)
doSendMagicEffect(PosItem, 13)  

elseif item.uid == uniqid and getitem.itemid == ItemIdEnergy and item.itemid == 9825 and (monstros[i+12].chance >= math.random(1, 100)) then
                        doSummonCreature(monstros[i+12].name, PosNameEnergy)
doRemoveItem(getitem.uid,1)
doCreatureSay(cid, "A máquina de summon criou um "..monstros[i+12].name..".", TALKTYPE_ORANGE_1)
doSendMagicEffect(PosItem, 13)  

elseif item.uid == uniqid and item.itemid == 9826 then
doTransformItem(item.uid, item.itemid - 1)
return TRUE
                end
        end
end