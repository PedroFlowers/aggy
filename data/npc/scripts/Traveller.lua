local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

---------------------------------------- axes ----------------------------------------
shopModule:addSellableItem({'great axe'},          	2415, 100000,     'great axe')
shopModule:addSellableItem({'stonecutter axe'},         2431, 90000,     'stonecutter axe')
shopModule:addSellableItem({'ravanger\'s axe'},         2443, 50000,     'ravanger\'s axe')
shopModule:addSellableItem({'adamatiun axe'},          	13501, 250000,     'adamatiun axe')
shopModule:addSellableItem({'masked marauder axe'},       13504, 100000,     'masked marauder axe ')
shopModule:addSellableItem({'master piece axe'},          	13505, 1000000,     'master piece axe')
shopModule:addSellableItem({'thordian axe'},          	13507, 3000000,     'thordian axe')
shopModule:addSellableItem({'jormungard axe'},          13509, 1500000,     'jormungard axe')
shopModule:addSellableItem({'magic fire axe'},          	13510, 1500000,     'magic fire axe')
shopModule:addSellableItem({'magma axe'},     	13511, 600000,     'magma axe')

---------------------------------------- clubs ---------------------------------------- 
shopModule:addSellableItem({'hammer of wrath'},         2444, 50000,     'hammer of wrath')
shopModule:addSellableItem({'orcish maul'},          	7392, 100000,     'orcish maul')
shopModule:addSellableItem({'heavy mace'},          	2452, 100000,     'heavy mace')
shopModule:addSellableItem({'thunder hammer'},          2421, 90000,     'thunder hammer')
shopModule:addSellableItem({'dinosour hammer'},         7423, 150000,     'dinosour hammer')
shopModule:addSellableItem({'demonbone'},          	7431, 30000,     'demonbone')
shopModule:addSellableItem({'greatsmith hammer'},       13512, 2000000,     'greatsmith hammer')
shopModule:addSellableItem({'estrundilion hammer'},          13514, 3000000,     'estrundilion hammer')
shopModule:addSellableItem({'War club'},        13517, 2500000,     'War club')
shopModule:addSellableItem({'suddendeath hammer'},      13518, 4000000,     'suddendeath hammer')
shopModule:addSellableItem({'hammer of thor'},          	13519, 1500000,     'hammer of thor')
shopModule:addSellableItem({'hawk avenger hammer'},          	13522, 5000000,     'hawk avenger hammer ')

---------------------------------------- fists ---------------------------------------- 
shopModule:addSellableItem({'iron gloves'},          	13608, 4000000,     'iron gloves')
shopModule:addSellableItem({'spyked grinder'},          13534, 1500000,     'spyked grinder')
shopModule:addSellableItem({'fist axe'},          	13537, 90000,     'fist axe')
shopModule:addSellableItem({'Fist Jow'},          	13535, 200000,     'Fist Jow')

---------------------------------------- swoards ---------------------------------------- 
shopModule:addSellableItem({'magic longsword'},         2390, 150000,     'magic longsword')
shopModule:addSellableItem({'magic sword'},          	2400, 90000,     'magic sword')
shopModule:addSellableItem({'warlord sword'},          	2408, 100000,     'warlord sword')
shopModule:addSellableItem({'justice seeker'},      7390, 250000,     'justice seeker')
shopModule:addSellableItem({'jelical sword'},         	13540, 2000000,     'jelical sword')
shopModule:addSellableItem({'sword of odin'},         	13544, 3000000,     'sword of odin')
shopModule:addSellableItem({'venom magic sword'},       13545, 1000000,     'venom magic sword')
shopModule:addSellableItem({'alabarda of fire'},        13546, 1500000,     'alabarda of fire')
shopModule:addSellableItem({'sword of teseu'},          13547, 2000000,     'sword of teseu')
shopModule:addSellableItem({'divine sword'},         13548, 3500000,     'divine sword')
shopModule:addSellableItem({'spirit seeker'},         13538, 1500000,     'spirit seeker')
shopModule:addSellableItem({'spirit of belkor '},         13541, 2500000,     'spirit of belkor')
shopModule:addSellableItem({'cold steel sword'},         13543, 1500000,     'cold steel sword')
shopModule:addSellableItem({'undead hammer'},         13513, 500000,     'undead hammer')

---------------------------------------- helmets ---------------------------------------- 
shopModule:addSellableItem({'magic golden helmet'},     2471, 6000000,     'magic golden helmet')
shopModule:addSellableItem({'winged helemt'},          	2474, 200000,     'winged helmet')
shopModule:addSellableItem({'horned helmet'},          	2496, 1000000,     'horned helmet')
shopModule:addSellableItem({'elven helmet'},          	2506, 600000,     'elven helmet')
shopModule:addSellableItem({'phoenix helmet'},          13550, 3000000,     'phoenix helmet')
shopModule:addSellableItem({'demoniac helmet'},         13551, 5000000,     'demoniac helmet')
shopModule:addSellableItem({'mind helmet'},          	13552, 2000000,     'mind helmet')
shopModule:addSellableItem({'naz\'gul scale helmet'},   13553, 4000000,     'naz\'gul scale helmet')
shopModule:addSellableItem({'magic plate helmet'},      13554, 300000,     'magic plate helmet')
shopModule:addSellableItem({'gladiator helmet'},        13555, 3000000,     'gladiator helmet')
shopModule:addSellableItem({'darkness helmet'},         13556, 4000000,     'darkness helmet')
shopModule:addSellableItem({'enchanted magic hat'},          	13557,8000000,     'enchanted magic hat')
shopModule:addSellableItem({'soul helmet'},          	13559, 5000000,     'soul helmet')
shopModule:addSellableItem({'legendary helmet'},        13560, 6000000,     'legendary helmet')

---------------------------------------- wands ---------------------------------------- 
shopModule:addSellableItem({'arcane wand'},          	2453, 100000,     'arcane wand')
shopModule:addSellableItem({'mind wand'},          	7426, 500000,     'mind wand')
shopModule:addSellableItem({'venom wand'},          	13526, 5000000,     'venom wand')
shopModule:addSellableItem({'phoenix wand'},          	13527, 1500000,     'phoenix wand')
shopModule:addSellableItem({'magic plague wand'},       13520, 2000000,     'magic plague wand')
shopModule:addSellableItem({'saruman wand'},          	13523, 3000000,     'saruman wand')
shopModule:addSellableItem({'Wand Celestial'},          	13529, 3000000,     'Wand Celestial')
shopModule:addSellableItem({'Arcane Staff'},          	13525, 4000000,     'Arcane Staff')

---------------------------------------- boots ---------------------------------------- 
shopModule:addSellableItem({'magic golden boots'},      2646, 2000000,     'magic golden boots')
shopModule:addSellableItem({'Sauron Boots'},          	13561, 4000000,     'Sauron Boots')

---------------------------------------- shields ---------------------------------------- 
shopModule:addSellableItem({'great shield'},          	2522 , 100000,     'great shield')
shopModule:addSellableItem({'blessed shield'},          2523 , 150000,     'blessed shield')
shopModule:addSellableItem({'plasma shield'},          	2542 , 250000,     'plasma shield')
shopModule:addSellableItem({'Second on shield'},          13562, 1000000,     'Second on shield')
shopModule:addSellableItem({'mind shield'},          	13563, 1000000,     'mind shield')
shopModule:addSellableItem({'balrog shield'},         	13565, 1500000,     'balrog shield')
shopModule:addSellableItem({'darkness shield'},         13566, 500000,     'darkness shield')
shopModule:addSellableItem({'demoniac Shield'},          	13567, 2000000,     'demoniac Shield')
shopModule:addSellableItem({'phoenix shield'},          13572, 1500000,     'phoenix shield')
shopModule:addSellableItem({'horned shield'},          	13573, 500000,     'horned shield')
shopModule:addSellableItem({'shadow shield'},          	13574, 1500000,     'shadow shield')
shopModule:addSellableItem({'First on shield'},     13575, 2000000,     'First on shield')
shopModule:addSellableItem({'naz\'gul bone shield'},    13576, 3000000,     'naz\'gul bone shield')
shopModule:addSellableItem({'toguro shield'},     13570, 2000000,     'toguro shield')


---------------------------------------- armors ---------------------------------------- 
shopModule:addSellableItem({'elven armor'},          	2505, 1000000,     'elven armor')
shopModule:addSellableItem({'spyked armor'},          	13577, 500000,     'spyked armor')
shopModule:addSellableItem({'horned armor'},          	13579, 1500000,     'horned armor')
shopModule:addSellableItem({'shadow armor'},          	13581, 3000000,     'shadow armor')
shopModule:addSellableItem({'gladiator armor'},         13584, 2000000,     'gladiator armor')
shopModule:addSellableItem({'soul armor'},          	13586, 6000000,     'soul armor')
shopModule:addSellableItem({'venom scale robe'},        13587, 2000000,     'venom scale robe')
shopModule:addSellableItem({'phoenix armor'},          	13588, 1500000,     'phoenix armor')
shopModule:addSellableItem({'magic golden armor'},      13589, 4000000,     'magic golden armor')
shopModule:addSellableItem({'naz\'gul scale mail'},     13590, 5000000,     'naz\'gul scale mail')
shopModule:addSellableItem({'mind robe'},          	13591, 1000000,     'mind robe')
shopModule:addSellableItem({'enchanted magic robe'},          	13593, 6000000,     'enchanted magic robe')
shopModule:addSellableItem({'legendary armor'},         13594, 7000000,     'legendary armor')
shopModule:addSellableItem({'cursed armor'},         13578, 2000000,     'cursed armor')
shopModule:addSellableItem({'magic dark armor'},         13583, 2000000,     'magic dark armor')
shopModule:addSellableItem({'shooter robe'},         13597, 2000000,     'shooter robe')
shopModule:addSellableItem({'Dark armor'},         13596, 3000000,     'Dark armor')
shopModule:addSellableItem({'king armor'},         13595, 2000000,     'king armor')
shopModule:addSellableItem({'fex armor'},         13585, 4000000,     'fex armor')
shopModule:addSellableItem({'golden balrog scale mail'},          		13580, 4000000,     'golden balrog scale mail')


---------------------------------------- legs ---------------------------------------- 
shopModule:addSellableItem({'magic golden legs'},       13598, 2000000,     'magic golden legs')
shopModule:addSellableItem({'naz\'gul scale legs'},     13599, 3000000,     'naz\'gul scale legs')
shopModule:addSellableItem({'soul legs'},          	13600, 4000000,     'soul legs')
shopModule:addSellableItem({'gladiator legs'},          13602, 1000000,     'gladiator legs')
shopModule:addSellableItem({'enchanted magic legs'},          	13603, 5000000,     'enchanted magic legs')
shopModule:addSellableItem({'magic plate legs'},        13604, 500000,     'magic plate legs')
shopModule:addSellableItem({'legendary legs'},          13605, 6000000,     'legendary legs')

---------------------------------------- bows ---------------------------------------- 
shopModule:addSellableItem({'elven crossbow'},          13531, 1000000,     'elven crossbow')
shopModule:addSellableItem({'celestial crossbow'},      13530, 2500000,     'celestial crossbow')
shopModule:addSellableItem({'rifle maker'},          	13532, 5000000,     'rifle maker')
shopModule:addSellableItem({'Shuriken'},          	13532, 5000000,     'Shuriken')
shopModule:addSellableItem({'Magic Golden Ring'},          	13502, 5000000,     'Magic Golden Ring')

---------------------------------------- extreme runes ---------------------------------------- 
shopModule:addBuyableItem({'extreme explosion dec'}, 	2315, 250000, 30, 'Extreme Explosion Dec')
shopModule:addBuyableItem({'extreme sd dec'}, 		2267, 35000, 10, 'Extreme Sudden Death Dec')
shopModule:addBuyableItem({'extreme explosion'}, 	2315, 25000, 3, 'Extreme Explosion')
shopModule:addBuyableItem({'extreme sd'}, 		2267, 35000, 1, 'Extreme Sudden Death')

npcHandler:addModule(FocusModule:new())