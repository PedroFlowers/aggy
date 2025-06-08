local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Tchau Até Mais!.')
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
		if isPremium(cid) then
			selfSay('Ha! Ola Mortal ' .. creatureGetName(cid) .. ',fico impresionado que tenha chegado ate aqui,força já vi que você tem,agora vamos ver cérebro,esta pronto?.')
			focus = cid
			talk_start = os.clock()
		else
			selfSay('Desculpe, Só Players Premium Account Pode Entrar Nesse Condominio!.')
			focus = 0
			talk_start = 0
		end
  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! Wait Mortal!.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'yes') then
			selfSay('' .. creatureGetName(cid) ..',digo mais uma veiz,você esta realmente pronto? se estiver diga sim.')
			talk_state = 1

		elseif talk_state == 1 then
			if msgcontains(msg, 'sim') then
				if pay(cid,0) then
					travel(cid, 994, 978, 10)
			selfSay('/B Parabéns ' .. creatureGetName(cid) .. '! esta a caminho da ultima sala do templo dos Deuses, e a um passo da imortalidade. Boa sorte!.')

				else
					selfSay('Descupe Seus Fundos Sao Insuficientes.')
				end
 			end
			talk_state = 0
		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 10 then
			selfSay('/B, ' .. creatureGetName(cid) ..'!')
			focus = 0
			talk_start = 0
		end
	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Next Mortal...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 2 then
 			selfSay('Next Gladiator.')
 			focus = 0
 		end
 	end
end
