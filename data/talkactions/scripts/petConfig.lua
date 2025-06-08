--// \\--
--( made by ~FreeGeels~* ) --
--____________ //--
petSystemExhaustion = 1 --in secods, 0 = no exhausted.
frases = {"Men, im still exhausted!", "Ok, in one momment", "afff, again?!", "meh, one second"}
lenght = 39 -- maximun lenght the !petsay can have...
manaGainTicks = 3000 --
--how fast the pet gains mana
manaGainAmmount = 10 --//
manaGainPerLevel = 20 -- mana that gains the pet for each level the player gain
magicLevelRate = 4 -- how faster the pet will gain mlvl compared to real tibia,,
base = 2000 --base storage. All storages will depend of this number
storages = {
petMag = base,
petUid = base+1,
petExha = base+2,
petDamage = base+3,
petManaSpent = base+4,
petIsOnline = base+5,
petMana = base+6,
petIsHealing = base+7,
petCap = base+8,
petSystemExhaustion = base+9
}

petItems = {}
maxItems = 10 --Max items the pet can carry
--lol V
x = 0 y = function() x = x + 1 end table.foreach(storages, y)
for i = 1, maxItems do
petItems[i] = base+x+i
end
--Pets, dependiong on the level
pets =
{
{vocations = {1, 5}, pets =
{{level = 100, name = "demon"}, {level = 60, name = "Dragons"}, {level = 50, name = "Dwarf Gegmancers"}, {level = 40, name = "Demon Skeleton"}, {level = 30, name = "Fire Devil"}, {level = 20, name = "Minotaur Archer"}, {level = 10, name = "Minotaur"}, {level = 0, name = "Rat"}}
},
{vocations = {2, 6}, pets =
{{level = 100, name = "demon"}, {level = 60, name = "Dragons"}, {level = 50, name = "Dwarf Gegmancers"}, {level = 40, name = "Demon Skeleton"}, {level = 30, name = "Fire Devil"}, {level = 20, name = "Minotaur Archer"}, {level = 10, name = "Minotaur"}, {level = 0, name = "Rat"}}
},
{vocations = {3, 7}, pets =
{{level = 100, name = "demon"}, {level = 60, name = "Dragons"}, {level = 50, name = "Dwarf Gegmancers"}, {level = 40, name = "Demon Skeleton"}, {level = 30, name = "Fire Devil"}, {level = 20, name = "Minotaur Archer"}, {level = 10, name = "Minotaur"}, {level = 0, name = "Rat"}}
},
{vocations = {4, 8}, pets =
{{level = 100, name = "demon"}, {level = 60, name = "Dragons"}, {level = 50, name = "Dwarf Gegmancers"}, {level = 40, name = "Demon Skeleton"}, {level = 30, name = "Fire Devil"}, {level = 20, name = "Minotaur Archer"}, {level = 10, name = "Minotaur"}, {level = 0, name = "Cave Rat"}}
}
}
--attacks of the pet. !petattack "param
--It's pretty easy how to config, I think it doesn't need an extra explanation.
attacks = {{param = "energy", theFunction = false, offensive = 1, needLevel = 20, self = 0, needMag = 10, manaSpent = 60, exhausted = 1, range = 6, combatType = COMBAT_ENERGYDAMAGE, combatAni = CONST_ME_ENERGYAREA, area = 2,
formula = {maxb = 0.4, maxa = 30, minb = 0.5, mina = 0},
},
{param = "exori", theFunction = false, offensive = 1, needLevel = 40, self = 0, needMag = 5, manaSpent = 145, exhausted = 1, range = 0, combatType = COMBAT_PHYSICALDAMAGE, combatAni = CONST_ME_HITAREA, area = 2,
formula = {maxb = 0.6, maxa = 30, minb = 1.2, mina = 0},
},
{param = "fireball", theFunction = false, offensive = 1, needLevel = 50, self = 0, needMag = 15, manaSpent = 100, exhausted = 1, range = 3, combatType = COMBAT_FIREDAMAGE, combatAni = CONST_ME_FIREAREA, area = 6,
formula = {maxb = 0.6, maxa = 30, minb = 1.2, mina = 0}
},
{param = "mini energy", theFunction = false, offensive = 1, needLevel = 0, self = 0, needMag = 0, manaSpent = 20, exhausted = 1, range = 1, combatType = COMBAT_ENERGYDAMAGE, combatAni = CONST_ME_ENERGYAREA, area = 1,
formula = {maxb = 0.13, maxa = 0, minb = 0.262, mina = 0}
},
{param = "health", theFunction = false, offensive = -1, needLevel = 10, self = 1, needMag = 0, manaSpent = 100, exhausted = 2, range = 0, combatType = COMBAT_HEALING, combatAni = CONST_ME_MAGIC_BLUE, area = 1,
formula = {maxb = 0.4, maxa = 20, minb = 0.7, mina = 0}
},
{param = "paralize", needLevel = 1, needMag = 0, manaSpent = 300, exhausted = 2,
theFunction = function (parameters)
daPet = getPlayerStorageValue(parameters.cid, storages.petUid)
if getCreatureTarget(daPet) ~= 0 then
doAddCondition(getCreatureTarget(parameters.cid), 4)
end
end
},
{param = "speed", needLevel = 10, needMag = 4, manaSpent = 60, exhausted = 2,
theFunction = function (parameters)
doAddCondition(getPlayerStorageValue(parameters.ci d, storages.petUid), 11)
end
},
{param = "double fire", needLevel = 1, needMag = 0, manaSpent = 100, exhausted = 2,
theFunction = function (parameters)


local myAttack = formulaAttack(getPlayerLevel(parameters.cid), getPlayerStorageValue(parameters.cid, storages.petMag), 0.7, 0, 1.0, 0)
function doAreaCombatHealthEx(params)
local randoms = {[1] = math.random(-2, 2),
[2] = math.random(-2, 2)
}

local attackCreature = getPlayerStorageValue(parameters.cid, storages.petUid)
if getCreatureTarget(getPlayerStorageValue(parameters .cid, storages.petUid)) ~= 0 then
attackCreature = getCreatureTarget(getPlayerStorageValue(parameters .cid, storages.petUid))
end
local posa = getCreaturePosition(attackCreature)
doAreaCombatHealth(getPlayerStorageValue(parameter s.cid, storages.petUid), COMBAT_FIREDAMAGE, {x = posa.x + randoms[1], y = posa.y + randoms[2], z = posa.z}, 1, -params.myAttack.minD, -params.myAttack.maxD, CONST_ME_FIREAREA)
doSendDistanceShoot(getCreaturePosition(getPlayerS torageValue(parameters.cid, storages.petUid)), {x = posa.x + randoms[1], y = posa.y + randoms[2], z = posa.z}, CONST_ANI_FIRE)

end
doAreaCombatHealthEx({cid = parameters.cid, target = getCreaturePosition(attackCreature), myAttack = myAttack})
for i = 1, 7 do
addEvent(doAreaCombatHealthEx, 200*i, {cid = parameters.cid, target = getCreaturePosition(attackCreature), myAttack = myAttack})
end
end
}
}
function setExhausted(cid)
setPlayerStorageValue(cid, storages.petSystemExhaustion, os.clock()+1)
end
function formulaAttack(magicLevel, level, maxb, maxa, minb, mina)
return {minD = (level * 2 + magicLevel * 3) * (1 + mina) + minb,
maxD = (level * 2 + magicLevel * 3) * (1 + maxb) + maxa
}
end

function isExhausted(cid)
if isPlayer(cid) == 1 then
local CRONOMETRO = getPlayerStorageValue(cid, storages.petSystemExhaustion)
local CRONOMETRO2 = os.clock()
local TIEMPO = os.difftime(CRONOMETRO2, CRONOMETRO)
if petSystemExhaustion - TIEMPO > petSystemExhaustion or CRONOMETRO == -1 then
setPlayerStorageValue(cid, storages.petSystemExhaustion, CRONOMETRO2+1)
return 0
end
if petSystemExhaustion - TIEMPO <= 0 then
return 0
end
end
return 1
end

function addMana(a)
local cid = a.cid
local petManaMax = getPlayerLevel(cid)*manaGainPerLevel
if getPlayerStorageValue(cid, storages.petMana) < petManaMax then
if petManaMax - getPlayerStorageValue(cid, storages.petMana) < 10 then
setPlayerStorageValue(cid, storages.petMana, getPlayerStorageValue(cid, storages.petMana) + petManaMax - getPlayerStorageValue(cid, storages.petMana))
else
setPlayerStorageValue(cid, storages.petMana, getPlayerStorageValue(cid, storages.petMana) + 10)
end
addEvent(addMana, manaGainTicks, {cid = cid})
else
setPlayerStorageValue(cid, storages.petIsHealing, 0)
end
end 