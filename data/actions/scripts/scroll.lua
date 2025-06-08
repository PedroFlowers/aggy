---------Criado por Alisson Linneker---------
--------Criado por Alisson Linneker---------
---Base
local itemID = 6106 -- O ID do item que quando usado ira dar a quantidade de EXP desejada
local exp = 50000 -- A quantidade de EXP desejada
local mensagem = "Uhul! EXP" -- A mensagem q ira aparecer quando for usado o item
--- Configs Principais:
local vocs = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 -- Os ID´s das vocações que podem usar este item, no caso 1 = Sorcerer e 5 = Master Sorcerer
local voca = "Wyzard,Cleric,Ranger,Slayer,Dark Wyzard,Elemental Cleric,Elven Ranger,Dragon Slayer,Elemental Cleric,Dark Wyzard,Elven Ranger,Divine Hero,Healer,Warlock,Sniper" -- Nome das vocações 1 e 5
local level = 250 -- O level necessario para poder usar o item

----Estrutura
function onUse(cid, item, frompos, item2, topos)
playerpos = getPlayerPosition(cid)
if item.itemid == itemID and getPlayerVocation(cid) == vocs and getPlayerLevel(cid) >= level then
doPlayerAddExp(cid, exp)
doSendMagicEffect(playerpos,30)
doCreatureSay(cid, mensagem, 3)
doRemoveItem(cid, item.uid, 1)
doPlayerSendTextMessage(cid,20, "Você ganhou " ..exp.. " de experiência.")
else
doPlayerSendCancel(cid, "Desculpe, mais apenas " ..voca.. " com level " ..level.."+ pode usar este item.")
end
return 1
end
--------Criado por Alisson Linneker---------