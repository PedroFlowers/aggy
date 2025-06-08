local focus = 0
local talk_start = 0
local target = 0
local days = 0

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
end


function onCreatureTurn(creature)

end


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
 		selfSay('Hi ' .. creatureGetName(cid) .. '! what you want mortal?')
 		focus = cid
 		talk_start = os.clock()

	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()


		if msgcontains(msg, 'energyze 1') or msgcontains(msg, 'energyze 1') then
			selfSay('I can energyze your necklace for 50k, amulet for 100k or your magic amulet for 150k, do you want energyze?')
			talk_state = 1

		elseif talk_state == 1 then
			if msgcontains(msg, 'yes') then
                        if doPlayerRemoveItem(cid,2197,1) == 1 then
 			doPlayerSendTextMessage(cid,22,"Voce Energizou seu Elemental necklace.")
  			buy(cid,13682,getCount(msg),50000)
					selfSay('energyze the elemental necklace sucessfull.')
				else
					selfSay('Sorry, you do not have elemental necklace.')
				end
			end
			talk_state = 0

		elseif msgcontains(msg, 'energyze 2') or msgcontains(msg, 'energyze 2') then
			selfSay('I can energyze your necklace for 50k, amulet for 100k or your magic amulet for 150k, do you want energyze?')
			talk_state = 2

		elseif talk_state == 2 then
			if msgcontains(msg, 'yes') then
                        if doPlayerRemoveItem(cid,2173,1) == 1 then
  			buy(cid,13683,getCount(msg),100000)
 			doPlayerSendTextMessage(cid,22,"Voce Energizou seu Spirit elemental necklace.")
					selfSay('energyze the spirit necklace sucessfull.')
				else
					selfSay('Sorry, you do not have one spirit elemental necklace.')
				end
			end
			talk_state = 0

		elseif msgcontains(msg, 'energyze 3') or msgcontains(msg, 'energyze 3') then
			selfSay('I can energyze your necklace for 50k, amulet for 100k or your magic amulet for 150k, do you want energyze?')
			talk_state = 3

		elseif talk_state == 3 then
			if msgcontains(msg, 'yes') then
                        if doPlayerRemoveItem(cid,2125,1) == 1 then
  			buy(cid,13684,getCount(msg),150000)
 			doPlayerSendTextMessage(cid,22,"Voce Energizou seu Magic elemental amulet.")
					selfSay('energyze the magic amulet sucessfull.')
				else
					selfSay('Sorry, you do not have one magic amulet.')
				end
			end
			talk_state = 0


		elseif msgcontains(msg, 'elemental necklace') or msgcontains(msg, 'necklace') then
			selfSay('You change a mysterious, dragon breath, scorpion, platinum, fluids and vampire tooth,change all for a Elemental necklace?')
			talk_state = 4

		elseif talk_state == 4 then
			if msgcontains(msg, 'yes') then
            if doPlayerRemoveItem(cid,2201,1) == 0 then 
                elseif doPlayerRemoveItem(cid,2198,1) == 0 then
                elseif doPlayerRemoveItem(cid,2170,1) == 0 then
                elseif doPlayerRemoveItem(cid,2171,1) == 0 then
                elseif doPlayerRemoveItem(cid,2172,1) == 0 then 
                elseif doPlayerRemoveItem(cid,2161,1) == 0 then 
  		elseif doPlayerAddItem(cid,2197,1) == 0 then 
					selfSay('change the amulet\'s for one elemental necklace sucessfull.')
				else
					selfSay('change the amulet\'s for one elemental necklace sucessfull.')
				end
			end
			talk_state = 0


		elseif msgcontains(msg, 'spirit elemental necklace') or msgcontains(msg, 'spirit necklace') then
			selfSay('You change a need a Ialamar, frozzen, sickness, Samantha, Mastafar, priest and eletric, change for a Spirit Elemental amulet?')
			talk_state = 5

		elseif talk_state == 5 then
			if msgcontains(msg, 'yes') then
            if doPlayerRemoveItem(cid,2129,1) == 0 then 
                elseif doPlayerRemoveItem(cid,2199,1) == 0 then
                elseif doPlayerRemoveItem(cid,2135,1) == 0 then
                elseif doPlayerRemoveItem(cid,2126,1) == 0 then
                elseif doPlayerRemoveItem(cid,2131,1) == 0 then 
                elseif doPlayerRemoveItem(cid,2130,1) == 0 then 
                elseif doPlayerRemoveItem(cid,2133,1) == 0 then 
		elseif doPlayerAddItem(cid,2173,1) == 0 then 
					selfSay('change the amulet\'s for one spirit elemental necklace sucessfull.')
				else
					selfSay('change the amulet\'s for one spirit elemental necklace sucessfull.')
				end
			end
			talk_state = 0

		elseif msgcontains(msg, 'magic elemental amulet') or msgcontains(msg, 'magic amulet') then
			selfSay('You change a Merlian, relic of the hell, Broonier, Thordain, dark wyzard, angel and gaya,change all for Elemental magic amulet?')
			talk_state = 6

		elseif talk_state == 6 then
			if msgcontains(msg, 'yes') then
            if doPlayerRemoveItem(cid,2138,1) == 0 then 
                elseif doPlayerRemoveItem(cid,2139,1) == 0 then
                elseif doPlayerRemoveItem(cid,2142,1) == 0 then
                elseif doPlayerRemoveItem(cid,2200,1) == 0 then
                elseif doPlayerRemoveItem(cid,2196,1) == 0 then 
                elseif doPlayerRemoveItem(cid,2132,1) == 0 then 
                elseif doPlayerRemoveItem(cid,2136,1) == 0 then 
		elseif doPlayerAddItem(cid,2125,1) == 0 then 
					selfSay('change the amulet\'s for one elemental magic amulet sucessfull.')
				else
					selfSay('change the amulet\'s for one elemental magic amulet sucessfull.')
				end
			end
			talk_state = 0

		elseif msgcontains(msg, 'bless') or msgcontains(msg, 'blessing') then
		getPlayerBlessing(cid,1)
		getPlayerBlessing(cid,2)
		getPlayerBlessing(cid,3)
		getPlayerBlessing(cid,4)
		getPlayerBlessing(cid,5)
			selfSay('deseja compra o bless ?')
			talk_state = 7

		elseif talk_state == 7 then
			if msgcontains(msg, 'yes') then
			if doPlayerRemoveItem(cid,13685,1) == 1 or doPlayerRemoveItem(cid,2160,100) == 1 then
			doPlayerAddBlessing(cid, 1)
			doPlayerAddBlessing(cid, 2)
			doPlayerAddBlessing(cid, 3)
			doPlayerAddBlessing(cid, 4)
			doPlayerAddBlessing(cid, 5)
			doPlayerSendTextMessage(cid,22,"Você recebeu a benção de Isolda.")
				else
					selfSay('Desculpe, mas voce não tem Ruby Coin suficiente.')
				end
			end
			talk_state = 0

	elseif msgcontains(msg, 'offer') then
                selfSay('I can do an element item or energyze your element item, i only need all "necklace", "amulet" ou "magics" amulet, also can bless a little mortal and reset a god!')

        elseif msgcontains(msg, 'necklace') then
                selfSay('I only need a mysterious, dragon breath, scorpion, platinum, fluids and vampire tooth, accept change all for a Elemental necklace?')
        elseif msgcontains(msg, 'amulet') then
                selfSay('I only need a Ialamar, frozzen, sickness, Samantha, Mastafar, priest and eletric, accept change all for a Spirit Elemental amulet?')
        elseif msgcontains(msg, 'magics') then
                selfSay('I only need a Merlian, relic of the hell, Broonier, Thordain, dark wyzard, angel and gaya, accept change all for a Elemental magic amulet?')



  		elseif msgcontains(msg, 'bye')  and getDistanceToCreature(cid) < 4 then
  			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
  			focus = 0
  			talk_start = 0
  		end
  	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
	doNpcSetCreatureFocus(focus)
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Next Please...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end
