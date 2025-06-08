-- script by Marcryzius D'evil. --
function onSay(cid, words, param)
config = {
level=510, -- level necessario pra reseta.
RemainingLvl=8, -- level que ficará depois de ser resetado.
exper=4200, -- experiencia que ficará depois de ser resetado.
pid=getPlayerGUID(cid), -- não mecha
skull="yes", -- players com white skull podem resetar? ("yes" or "no").
redskull="yes", -- players com red skull podem resetar? ("yes" or "no").
prot="yes", -- players precisam estar em protection zone pra resetar? ("yes" or "no").
bat="yes", --players precisam estar sem fight pra resetarem? ("yes" or "no").
voc = getPlayerVocation(cid),
mana = 35,
health = 185
}

function getResets(cid)
reset = getPlayerStorageValue(cid,1020)
if reset < 0 then
reset = 0
end
return reset
end

if(config.skull == "no") and (getCreatureSkullType(cid) == 3) then
doPlayerSendTextMessage(cid,22,"apenas players sem white skull podem resetar.")
return TRUE
end

if(config.redskull == "no") and (getCreatureSkullType(cid) == 4) then
doPlayerSendTextMessage(cid,22,"apenas player sem red skull podem resetar.")
return TRUE
end

if(config.prot == "yes") and (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
doPlayerSendTextMessage(cid,22,"você precisa estar em protection zone pra poder resetar.")
return TRUE
end

if(config.bat == "yes") and (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then
doPlayerSendTextMessage(cid,22,"você precisa estar sem battler pra poder resetar.")
return TRUE
end

if getPlayerLevel(cid) >= config.level then
setPlayerStorageValue(cid,1020,getResets(cid)+1)
doPlayerSetNameDescription(cid, " Have a "..getResets(cid)+(1).." reset\'s.")
doPlayerPopupFYI(cid,"you now was reset, you have "..getResets(cid)+(1).." reset\'s.")
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
if RemainingLvl and voc == 5 then
doPlayerSetVocation(cid, 9)
elseif RemainingLvl and voc == 6 then
doPlayerSetVocation(cid, 10)
elseif RemainingLvl and voc == 7 then
doPlayerSetVocation(cid, 11)
elseif RemainingLvl and voc == 8 then
doPlayerSetVocation(cid, 12)
setCreatureMaxMana(cid, mana)
setCreatureMaxHealth(cid, health)
doRemoveCreature(cid)
db.executeQuery("UPDATE `players` SET `level` = "..config.RemainingLvl..", `experience` = "..config.exper.." WHERE `id` = "..config.pid)
else
doPlayerSendCancel(cid, "You need to have level "..config.level.." or more you may be reset.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end

end
return TRUE
end