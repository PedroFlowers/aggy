function onUse(cid, item, frompos, item2, topos)

voc = getPlayerVocation(cid)
quest = getPlayerStorageValue(cid,21737)
clubskill = getPlayerSkill(cid,1)
chanceeasy = math.random(1, 100)
chanceeasy1 = math.random(1, 70)
chanceeasy2 = math.random(1, 120)
chanceeasy3 = math.random(1, 110)
chanceeasy4 = math.random(1, 125)
chanceeasy5 = math.random(1, 160)
chanceeasy6 = math.random(1, 111)
chanceeasy7 = math.random(1, 140)
chancemedium3 = math.random(1,330)
chancemedium2 = math.random(1,300)
chancemedium = math.random(1,250)
chancemedium1 = math.random(1,200)
chancehard1 = math.random(1,410)
chancehard = math.random(1,500)
chanceveryhard = math.random(1,700)
chanceexpert = math.random(1,900)

-----------------------------------------------------------------------
-- CALCAS
-- BRASS LEGS

basepos = {x = 59, y = 47, z = 4, stackpos = 2}
item2 = getThingfromPos(basepos)
item1pos = {x = 59, y = 47, z = 4, stackpos = 3}
item1 = getThingfromPos(item1pos)
item3pos = {x = 59, y = 47, z = 4, stackpos = 4}
item3 = getThingfromPos(item3pos)
item4pos = {x = 59, y = 47, z = 4, stackpos = 5}
item4 = getThingfromPos(item4pos)
item5pos = {x = 59, y = 47, z = 4, stackpos = 6}
item5 = getThingfromPos(item5pos)
item6pos = {x = 59, y = 47, z = 4, stackpos = 7}
item6 = getThingfromPos(item6pos)
item7pos = {x = 59, y = 47, z = 4, stackpos = 8}
item7 = getThingfromPos(item7pos)


if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2154 and item3.itemid == 2649 then
if clubskill >= chanceeasy then
doPlayerAddItem(cid,2478,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end
---------------------------------------------------------------------------------
-- PLATE LEGS

if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5468 and item3.itemid == 2478 then
if clubskill >= chanceeasy2 then
doPlayerAddItem(cid,2647,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end
---------------------------------------------------------------------------------
-- KNIGHT LEGS
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2647 and item3.itemid == 5468 and item4.itemid == 5914 and item4.type >= 10 then
if clubskill >= chancemedium1 then
doPlayerAddItem(cid,2477,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 10)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 10)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end

---------------------------------------------------------------------------------

-- CROWN LEGS
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2647 and item3.itemid == 5911 and item3.type >= 15 and item4.itemid == 2147 and item4.type >= 10 then
if clubskill >= chancemedium then
doPlayerAddItem(cid,2488,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 15)
doRemoveItem(item4.uid, 10)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 15)
doRemoveItem(item4.uid, 10)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end

---------------------------------------------------------------------------------

-- GOLDEN LEGS
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2478 and item3.itemid == 5880 and item3.type >= 20 and item4.itemid == 5914 and item4.type >= 50 then
if clubskill >= chancehard then
doPlayerAddItem(cid,2470,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 20)
doRemoveItem(item4.uid, 50)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 20)
doRemoveItem(item4.uid, 50)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end

---------------------------------------------------------------------------------

-- DRAGON SCALE LEGS
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5919 and item3.itemid == 1294 and item3.type == 100 and item4.itemid == 5920 and item4.type == 100 then
if clubskill >= chanceveryhard then
doPlayerAddItem(cid,2469,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 100)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 100)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- ESPADAS
-- SPIKE SWORD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2376 and item3.itemid == 1294 and item3.type >= 50 and item4.itemid == 2158 then
if clubskill >= chanceeasy then
doPlayerAddItem(cid,2383,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 50)
doRemoveItem(item4.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 50)
doRemoveItem(item4.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- SERPENT SWORD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2376 and item3.itemid == 1294 and item3.type >= 50 and item4.itemid == 5877 and item4.type >= 5 and item5.itemid == 5920 and item5.type >= 1 then
if clubskill >= chanceeasy3 then
doPlayerAddItem(cid,2409,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 50)
doRemoveItem(item4.uid, 5)
doRemoveItem(item5.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 50)
doRemoveItem(item4.uid, 5)
doRemoveItem(item5.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- CRIMSOM SWORD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2376 and item3.itemid == 1294 and item3.type >= 70 and item4.itemid == 5901 and item4.type >= 30 then
if clubskill >= chanceeasy2 then
doPlayerAddItem(cid,7385,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 70)
doRemoveItem(item4.uid, 30)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 70)
doRemoveItem(item4.uid, 30)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- TWO HANDED SWORD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2376 and item3.itemid == 2376 and item4.itemid == 1294 and item4.type == 100 then
if clubskill >= chanceeasy4 then
doPlayerAddItem(cid,2377,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 100)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 100)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- FIRE SWORD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2376 and item3.itemid == 1294 and item3.type == 100 and item4.itemid == 5468 and item5.itemid == 5911 and item5.type >= 5 then
if clubskill >= chanceeasy5 then
doPlayerAddItem(cid,2392,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 5)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 5)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- HAUNTED BLADE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2376 and item3.itemid == 5898 and item3.type >= 20 and item4.itemid == 5468 and item5.itemid == 1294 and item5.type >= 50 and item6.itemid == 2158 then
if clubskill >= chanceeasy5 then
doPlayerAddItem(cid,7407,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 20)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 50)
doRemoveItem(item6.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 20)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 50)
doRemoveItem(item6.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- ASSASSIN DAGGER
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2376 and item3.itemid == 1294 and item3.type == 100 and item4.itemid == 2156 and item5.itemid == 5906 and item5.type >= 3 then
if clubskill >= chancemedium1 then
doPlayerAddItem(cid,7404,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 3)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 3)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- DRAGON SLAYER
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2376 and item3.itemid == 1294 and item3.type == 100 and item4.itemid == 2154 and item5.itemid == 5901 and item5.type >= 50 and item6.itemid == 5880 and item6.type >= 10 then
if clubskill >= chancemedium2 then
doPlayerAddItem(cid,7402,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 50)
doRemoveItem(item6.uid, 10)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 50)
doRemoveItem(item6.uid, 10)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- GIANT SWORD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2376 and item3.itemid == 5895 and item3.type >= 40 and item4.itemid == 5893 and item4.type >= 20 and item5.itemid == 5906 and item5.type >= 2 and item6.itemid == 2158 and item7.itemid == 1294 and item7.type == 100 then
if clubskill >= chancehard then
doPlayerAddItem(cid,2393,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 40)
doRemoveItem(item4.uid, 20)
doRemoveItem(item5.uid, 2)
doRemoveItem(item6.uid, 1)
doRemoveItem(item7.uid, 100)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 40)
doRemoveItem(item4.uid, 20)
doRemoveItem(item5.uid, 2)
doRemoveItem(item6.uid, 1)
doRemoveItem(item7.uid, 100)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- MACHADOS
-- ORCISH AXE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5901 and item1.type == 50 and item3.itemid == 1294 and item3.type == 10 then
if clubskill >= chanceeasy then
doPlayerAddItem(cid,2428,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 50)
doRemoveItem(item3.uid, 10)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 50)
doRemoveItem(item3.uid, 10)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- BARBARIAN AXE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5901 and item1.type >= 70 and item3.itemid == 1294 and item3.type >= 30 and item4.itemid == 5898 and item4.type >= 3 then
if clubskill >= chanceeasy6 then
doPlayerAddItem(cid,2429,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 70)
doRemoveItem(item3.uid, 30)
doRemoveItem(item4.uid, 3)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 70)
doRemoveItem(item3.uid, 30)
doRemoveItem(item4.uid, 3)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- KNIGHT AXE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5901 and item1.type == 100 and item3.itemid == 1294 and item3.type >= 50 and item4.itemid == 2156 and item5.itemid == 2147 and item5.type >= 50 then
if clubskill >= chanceeasy5 then
doPlayerAddItem(cid,2430,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 50)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 50)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 50)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 50)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- HALBERD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5901 and item1.type == 100 and item3.itemid == 2158 and item4.itemid == 1294 and item4.type >= 30 then
if clubskill >= chanceeasy7 then
doPlayerAddItem(cid,2381,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 30)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 30)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- FIRE AXE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 1294 and item1.type == 100 and item3.itemid == 5468 and item4.itemid == 5911 and item4.type >= 20 and item5.itemid == 2156 then
if clubskill >= chancemedium1 then
doPlayerAddItem(cid,2432,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 20)
doRemoveItem(item5.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 20)
doRemoveItem(item5.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- TITAN AXE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 1294 and item1.type == 100 and item3.itemid == 5901 and item3.type == 100 and item4.itemid == 5909 and item4.type >= 30 and item5.itemid == 2145 and item5.type >= 25 then
if clubskill >= chancemedium3 then
doPlayerAddItem(cid,7413,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 30)
doRemoveItem(item5.uid, 25)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 30)
doRemoveItem(item5.uid, 25)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- VILE AXE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 1294 and item1.type == 100 and item3.itemid == 1294 and item3.type == 100 and item4.itemid == 5468 and item5.itemid == 5880 and item5.type >= 20 and item6.itemid == 5893 and item6.type >= 5 then
if clubskill >= chancehard1 then
doPlayerAddItem(cid,7388,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 20)
doRemoveItem(item6.uid, 5)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 20)
doRemoveItem(item6.uid, 5)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- DRAGON LANCE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 1294 and item1.type == 100 and item3.itemid == 5882 and item3.type >= 30 and item4.itemid == 2156 and item5.itemid == 5906 and item5.type >= 1 and item6.itemid == 5913 and item6.type >= 10 and item7.itemid == 5901 and item7.type >= 20 then
if clubskill >= chancehard then
doPlayerAddItem(cid,2414,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 30)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 1)
doRemoveItem(item6.uid, 10)
doRemoveItem(item7.uid, 20)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 30)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 1)
doRemoveItem(item6.uid, 10)
doRemoveItem(item7.uid, 20)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- CLAVAS
-- STAFF
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5901 and item2.type >= 30 then
if clubskill >= chanceeasy then
doPlayerAddItem(cid,2401,1)
doRemoveItem(item2.uid, 30)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 30)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- CLERICAL MACE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item3.itemid == 2398 and item1.itemid == 5901 and item1.type >= 40 and item4.itemid == 1294 and item4.type >= 5 then
if clubskill >= chanceeasy then
doPlayerAddItem(cid,2423,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 40)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 5)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 40)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 5)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- DRAGON HAMMER
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item3.itemid == 5901 and item3.type == 60 and item1.itemid == 1294 and item1.type >= 10 and item4.itemid == 5920 and item4.type >= 5 and item5.itemid == 5877 and item5.type >= 5 then
if clubskill >= chanceeasy4 then
doPlayerAddItem(cid,2434,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 60)
doRemoveItem(item4.uid, 5)
doRemoveItem(item5.uid, 5)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 60)
doRemoveItem(item4.uid, 5)
doRemoveItem(item5.uid, 5)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- BRUTETAMER'S STAFF
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5901 and item1.type == 70 and item3.itemid == 1294 and item3.type == 40 and item4.itemid == 2401 and item5.itemid == 2156 then
if clubskill >= chanceeasy7 then
doPlayerAddItem(cid,7379,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 70)
doRemoveItem(item3.uid, 40)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 70)
doRemoveItem(item3.uid, 40)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- SKULL STAFF
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item3.itemid == 5901 and item3.type == 100 and item1.itemid == 2401 and item4.itemid == 5911 and item4.type >= 10 and item5.itemid == 5468 then
if clubskill >= chanceeasy5 then
doPlayerAddItem(cid,2436,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 10)
doRemoveItem(item5.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 100)
doRemoveItem(item4.uid, 10)
doRemoveItem(item5.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- Spiked Squelcher
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item6.itemid == 5901 and item6.type == 100 and item3.itemid == 1294 and item3.type >= 70 and item4.itemid == 5912 and item4.type >= 10 and item5.itemid == 2158 and item1.itemid == 5468 then
if clubskill >= chancemedium3 then
doPlayerAddItem(cid,7452,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 70)
doRemoveItem(item4.uid, 10)
doRemoveItem(item5.uid, 1)
doRemoveItem(item6.uid, 100)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 70)
doRemoveItem(item4.uid, 10)
doRemoveItem(item5.uid, 1)
doRemoveItem(item6.uid, 100)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- War Hammer
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item5.itemid == 5901 and item5.type >= 70 and item3.itemid == 5468 and item4.itemid == 1294 and item4.type >= 40 and item1.itemid == 2154 and item6.itemid == 5913 and item6.type >= 30 then
if clubskill >= chancehard then
doPlayerAddItem(cid,2391,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 40)
doRemoveItem(item5.uid, 70)
doRemoveItem(item6.uid, 30)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 40)
doRemoveItem(item5.uid, 70)
doRemoveItem(item6.uid, 30)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- ARMORS
-- PLATE ARMOR
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item5.itemid == 5909 and item5.type >= 40 and item3.itemid == 2145 and item3.type == 77 and item4.itemid == 5468 and item1.itemid == 2465 and item6.itemid == 5890 and item6.type == 26 then
if clubskill >= chanceeasy4 then
doPlayerAddItem(cid,2463,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 77)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 40)
doRemoveItem(item6.uid, 26)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 77)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 40)
doRemoveItem(item6.uid, 26)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- BRASS ARMOR
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2467 and item3.itemid == 2154 and item4.itemid == 5914 and item4.type == 40 and item5.itemid == 5880 and item5.type == 5 then
if clubskill >= chanceeasy then
doPlayerAddItem(cid,2465,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 40)
doRemoveItem(item5.uid, 5)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 40)
doRemoveItem(item5.uid, 5)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- KNIGHT ARMOR
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2463 and item3.itemid == 5468 and item4.itemid == 5894 and item4.type == 100 and item5.itemid == 5899 and item5.type == 50 and item6.itemid == 5913 and item6.type == 5 then
if clubskill >= chanceeasy5 then
doPlayerAddItem(cid,2476,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 100)
doRemoveItem(item5.uid, 50)
doRemoveItem(item6.uid, 5)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 100)
doRemoveItem(item5.uid, 50)
doRemoveItem(item6.uid, 5)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- CROWN ARMOR
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2147 and item1.type == 20 and item3.itemid == 5911 and item3.type == 30 and item4.itemid == 5882 and item4.type == 52 and item5.itemid == 5877 and item5.type == 57 and item6.itemid == 2463 then
if clubskill >= chancemedium1 then
doPlayerAddItem(cid,2487,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 20)
doRemoveItem(item3.uid, 30)
doRemoveItem(item4.uid, 52)
doRemoveItem(item5.uid, 57)
doRemoveItem(item6.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 20)
doRemoveItem(item3.uid, 30)
doRemoveItem(item4.uid, 52)
doRemoveItem(item5.uid, 57)
doRemoveItem(item6.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- GOLDEN ARMOR
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2148 and item1.type == 100 and item3.itemid == 5914 and item3.type == 80 and item4.itemid == 2465 and item5.itemid == 6541 and item5.type == 5 and item6.itemid == 1689 then
if clubskill >= chancemedium3 then
doPlayerAddItem(cid,2466,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 80)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 5)
doRemoveItem(item6.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 100)
doRemoveItem(item3.uid, 80)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 5)
doRemoveItem(item6.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- MAGIC PLATE ARMOR
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2160 and item1.type == 5 and item3.itemid == 2158 and item4.itemid == 2146 and item4.type == 89 and item5.itemid == 5906 and item5.type == 42 and item6.itemid == 5912 and item6.type == 83 and item7.itemid == 5913 and item7.type == 65 then
if clubskill >= chancehard then
doPlayerAddItem(cid,2472,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 5)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 89)
doRemoveItem(item5.uid, 42)
doRemoveItem(item6.uid, 83)
doRemoveItem(item7.uid, 65)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 5)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 89)
doRemoveItem(item5.uid, 42)
doRemoveItem(item6.uid, 83)
doRemoveItem(item7.uid, 65)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- BLUE ROBE
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5912 and item1.type == 80 and item3.itemid == 2143 and item3.type == 45 and item4.itemid == 2153 and item5.itemid == 6543 and item5.type == 5 then
if clubskill >= chancemedium then
doPlayerAddItem(cid,2656,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 80)
doRemoveItem(item3.uid, 45)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 5)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 80)
doRemoveItem(item3.uid, 45)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 5)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- DRAGON SCALE MAIL
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5910 and item1.type == 47 and item3.itemid == 2155 and item4.itemid == 5877 and item4.type == 72 and item5.itemid == 2149 and item5.type == 77 and item6.itemid == 5899 and item6.type == 13 then
if clubskill >= chancemedium3 then
doPlayerAddItem(cid,2492,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 47)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 72)
doRemoveItem(item5.uid, 77)
doRemoveItem(item6.uid, 13)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 47)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 72)
doRemoveItem(item5.uid, 77)
doRemoveItem(item6.uid, 13)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- ELMOS
-- WARRIOR HELMET
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5878 and item1.type == 70 and item3.itemid == 2145 and item3.type == 53 and item4.itemid == 5909 and item4.type == 17 and item5.itemid == 5880 and item5.type == 6 then
if clubskill >= chanceeasy5 then
doPlayerAddItem(cid,2475,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 70)
doRemoveItem(item3.uid, 53)
doRemoveItem(item4.uid, 17)
doRemoveItem(item5.uid, 6)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 70)
doRemoveItem(item3.uid, 53)
doRemoveItem(item4.uid, 17)
doRemoveItem(item5.uid, 6)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- CROWN HELMET
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5911 and item1.type == 42 and item3.itemid == 2156 and item4.itemid == 5468 and item5.itemid == 6542 and item5.type == 8 then
if clubskill >= chanceeasy7 then
doPlayerAddItem(cid,2491,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 42)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 8)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 42)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 8)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- ROYAL HELMET
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5882 and item1.type == 81 and item3.itemid == 2154 and item4.itemid == 5920 and item4.type == 48 and item5.itemid == 5899 and item5.type == 21 and item6.itemid == 5895 and item6.type == 13 then
if clubskill >= chancemedium then
doPlayerAddItem(cid,2498,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 81)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 48)
doRemoveItem(item5.uid, 21)
doRemoveItem(item6.uid, 13)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 81)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 48)
doRemoveItem(item5.uid, 21)
doRemoveItem(item6.uid, 13)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- DRAGON SCALE HELMET
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5920 and item1.type == 89 and item3.itemid == 5919 and item4.itemid == 5910 and item4.type == 21 and item5.itemid == 5468 and item6.itemid == 2155 and item7.itemid == 2149 and item7.type == 79 then
if clubskill >= chancehard then
doPlayerAddItem(cid,2506,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 89)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 21)
doRemoveItem(item5.uid, 1)
doRemoveItem(item6.uid, 1)
doRemoveItem(item7.uid, 79)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 89)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 21)
doRemoveItem(item5.uid, 1)
doRemoveItem(item6.uid, 1)
doRemoveItem(item7.uid, 79)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- ESCUDOS
-- DRAGON SHIELD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5877 and item1.type == 53 and item3.itemid == 2156 and item4.itemid == 5468 then
if clubskill >= chanceeasy4 then
doPlayerAddItem(cid,2516,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 53)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 53)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- TOWER SHIELD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5882 and item1.type == 46 and item3.itemid == 5913 and item3.type == 31 and item4.itemid == 5878 and item4.type == 42 and item5.itemid == 5880 and item5.type == 18 then
if clubskill >= chanceeasy7 then
doPlayerAddItem(cid,2528,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 46)
doRemoveItem(item3.uid, 31)
doRemoveItem(item4.uid, 42)
doRemoveItem(item5.uid, 18)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 46)
doRemoveItem(item3.uid, 31)
doRemoveItem(item4.uid, 42)
doRemoveItem(item5.uid, 18)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- CROWN SHIELD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5911 and item1.type == 71 and item3.itemid == 5468 and item4.itemid == 2156 and item5.itemid == 2147 and item5.type == 74 then
if clubskill >= chanceeasy5 then
doPlayerAddItem(cid,2519,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 71)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 74)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 71)
doRemoveItem(item3.uid, 1)
doRemoveItem(item4.uid, 1)
doRemoveItem(item5.uid, 74)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- VAMPIRE SHIELD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2158 and item3.itemid == 5905 and item3.type == 78 and item4.itemid == 5912 and item4.type == 61 and item5.itemid == 2146 and item5.type == 97 then
if clubskill >= chanceeasy5 then
doPlayerAddItem(cid,2534,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 78)
doRemoveItem(item4.uid, 61)
doRemoveItem(item5.uid, 97)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 78)
doRemoveItem(item4.uid, 61)
doRemoveItem(item5.uid, 97)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- DEMON SHIELD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2156 and item3.itemid == 5906 and item3.type == 51 and item4.itemid == 5893 and item4.type == 32 and item5.itemid == 5468 and item6.itemid == 5911 and item6.type == 13 then
if clubskill >= chancemedium then
doPlayerAddItem(cid,2520,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 51)
doRemoveItem(item4.uid, 32)
doRemoveItem(item5.uid, 1)
doRemoveItem(item6.uid, 13)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 51)
doRemoveItem(item4.uid, 32)
doRemoveItem(item5.uid, 1)
doRemoveItem(item6.uid, 13)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- MASTERMIND SHIELD
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 5468 and item3.itemid == 5930 and item3.type == 3 and item4.itemid == 5878 and item4.type == 66 and item5.itemid == 5913 and item5.type == 82 and item6.itemid == 5899 and item6.type == 46 and item7.itemid == 2154 then
if clubskill >= chancehard then
doPlayerAddItem(cid,2514,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 3)
doRemoveItem(item4.uid, 66)
doRemoveItem(item5.uid, 82)
doRemoveItem(item6.uid, 46)
doRemoveItem(item7.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 1)
doRemoveItem(item3.uid, 3)
doRemoveItem(item4.uid, 66)
doRemoveItem(item5.uid, 82)
doRemoveItem(item6.uid, 46)
doRemoveItem(item7.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- UTILITARIOS
-- FIRE BUG
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 2156 then
if clubskill >= chanceeasy then
doPlayerAddItem(cid,5468,1)
doRemoveItem(item2.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- CHUNK OF CRUDE IRON
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 1294 and item2.type == 10 then
if clubskill >= chanceeasy then
doPlayerAddItem(cid,5892,1)
doRemoveItem(item2.uid, 10)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end


---------------------------------------------------------------------------------
-- YELLOW GEM
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2145 and item1.type >= 30 and item3.itemid == 5914 and item3.type >= 1 then
if clubskill >= chanceeasy1 then
doPlayerAddItem(cid,2154,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 30)
doRemoveItem(item3.uid, 1)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 30)
doRemoveItem(item3.uid, 1)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end



-----------------------------------------------------------------------------------

-- BLUE GEM
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2145 and item1.type >= 10 and item3.itemid == 2146 and item3.type >= 30 then
if clubskill >= chanceeasy1 then
doPlayerAddItem(cid,2158,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 30)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 30)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end



-----------------------------------------------------------------------------------

-- GREEN GEM
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2145 and item1.type >= 10 and item3.itemid == 2149 and item3.type >= 30 then
if clubskill >= chanceeasy1 then
doPlayerAddItem(cid,2155,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 30)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 30)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end



-----------------------------------------------------------------------------------

-- RED GEM
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2145 and item1.type >= 10 and item3.itemid == 2147 and item3.type >= 30 then
if clubskill >= chanceeasy1 then
doPlayerAddItem(cid,2156,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 30)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 30)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end



-----------------------------------------------------------------------------------

-- VIOLET GEM
if voc == 7 or voc == 16 then
if quest == 1 then
if item2.itemid == 5892 and item1.itemid == 2145 and item1.type >= 10 and item3.itemid == 2150 and item3.type >= 30 then
if clubskill >= chanceeasy1 then
doPlayerAddItem(cid,2153,1)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 30)
doSendMagicEffect(topos,28)
doPlayerSendTextMessage(cid,19,"Congratulations.")


else
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid, 1)
doRemoveItem(item1.uid, 10)
doRemoveItem(item3.uid, 30)
doPlayerSendTextMessage(cid,19,"Failed.")
end
end
end
end



-----------------------------------------------------------------------------------


end