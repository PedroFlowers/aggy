--sistema de invasao by yago nobre (god severo) OTServ Networks

function onSay(cid, words, param)
aceso = 1
aceso1 = getPlayerAccess(cid)
tempo = 9000
if aceso1 >= aceso then

doPlayerSay(cid,"/bc white Os Grandes Dark Warlocks Mandaram uma Tropa de warlock Para Dahlia.Defenda Sua Cidade.",22)
doPlayerSendTextMessage(cid, 24,'Invasao Realizada Com Sucesso.')

--- Local summons and Creatures summons ---
monsterpos1 = {x=1000, y=1006, z=7}
monsterpos2 = {x=1000, y=1007, z=7}
monsterpos3 = {x=1000, y=1008, z=7}
monsterpos4 = {x=1000, y=1009, z=7}
monsterpos5 = {x=1000, y=1010, z=7}
monsterpos6 = {x=1000, y=1011, z=7}
monsterpos7 = {x=1000, y=1012, z=7}
monsterpos8 = {x=1000, y=1013, z=7}
monsterpos9 = {x=1000, y=1014, z=7}
monsterpos10 = {x=1000, y=1015, z=7}
monsterpos11 = {x=1000, y=1016, z=7}
monsterpos12 = {x=1000, y=1017, z=7}
monsterpos13 = {x=1000, y=1018, z=7}
monsterpos14 = {x=1000, y=1019, z=7}
monsterpos15 = {x=1000, y=1020, z=7}
monsterpos16 = {x=1000, y=1021, z=7}
monsterpos17 = {x=1000, y=1022, z=7}
monsterpos18 = {x=1000, y=1023, z=7}
monsterpos19 = {x=1000, y=1024, z=7}
monsterpos20 = {x=1000, y=1025, z=7}

doSummonCreature("warlock",monsterpos1)
doSummonCreature("warlock",monsterpos2)
doSummonCreature("warlock",monsterpos3)
doSummonCreature("warlock",monsterpos4)
doSummonCreature("warlock",monsterpos5)
doSummonCreature("warlock",monsterpos6)
doSummonCreature("warlock",monsterpos7)
doSummonCreature("warlock",monsterpos8)
doSummonCreature("warlock",monsterpos9)
doSummonCreature("warlock",monsterpos10)
doSummonCreature("warlock",monsterpos11)
doSummonCreature("dark warlock",monsterpos12)
doSummonCreature("warlock",monsterpos13)
doSummonCreature("warlock",monsterpos14)
doSummonCreature("dark warlock",monsterpos15)
doSummonCreature("warlock",monsterpos16)
doSummonCreature("warlock",monsterpos17)
doSummonCreature("warlock",monsterpos18)
doSummonCreature("warlock",monsterpos19)
doSummonCreature("dark warlock",monsterpos20)
--- end local summons and creatures summons ---

else
doPlayerSendTextMessage(cid,22,"Invasao Realizada Com Sucesso.")
end
end

