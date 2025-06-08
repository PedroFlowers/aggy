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

function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
 		selfSay('Hello ' .. creatureGetName(cid) .. '!Eu Vendo bp de blood\'s custa 3 ruby coins, se voce for comprar basta dizer (bp de blood), muito obrigado por comprar de mim e nao do reidy ^^')
 		focus = cid
 		talk_start = os.clock()

	elseif msgcontains(msg, 'hi') then
  		selfSay('' .. creatureGetName(cid) .. ', Espere sua vez.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'kukikukikiku') then
			selfSay('Aceita trocar 100 Dsp\'s por 30 dias de premium?')
			talk_state = 1

		elseif talk_state == 1 then
			if msgcontains(msg, 'yes') then
                                    if doPlayerRemoveItem(cid,6527,100) == 1 then
					selfSay('/premium '.. creatureGetName(cid) ..', 30')
					doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"Voce recebeu premium account por 30 dias.")
					doPlayerSendTextMessage(cid,MESSAGE_EVENT_DEFAULT,"Ainda lhe resta " .. getPlayerItemCount(cid,6527) .. " Dragon Souls Points.")
					selfSay('You have 30 days of premium more!')
				else
					selfSay('Desculpe, mas voce não tem Dsp\'s suficiente.')
				end
			end
			talk_state = 0


		elseif msgcontains(msg, 'bp de blood') then
			selfSay('Vai comprar a bp de blood?')
			talk_state = 8

		elseif talk_state == 8 then
			if msgcontains(msg, 'yes') then
                                    if doPlayerRemoveItem(cid,13685,3) == 1 then
		container = doPlayerAddItem(cid, 2000, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)

					doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"Voce recebeu uma Bp com 20 Blood of God\'s.")
					doPlayerSendTextMessage(cid,MESSAGE_EVENT_DEFAULT,"Ainda lhe resta " .. getPlayerItemCount(cid,13685) .. " Ruby Coins.")
					selfSay('Aqui esta! Obrigado e volte sempre.')
				else
					selfSay('Desculpe, mas voce não tem Ruby\'s suficiente.')
				end
			end
			talk_state = 0
  		end
  	end
end

function onCreatureChangeOutfit(creature)

end

function onThink()
	doNpcSetCreatureFocus(focus)
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('How rude!')
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

