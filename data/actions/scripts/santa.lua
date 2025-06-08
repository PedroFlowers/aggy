-- Santa Claus - Fala uma mensagem de Natal  (By Conde Sapo)

function onUse(cid, item, frompos, item2, topos)

	rand = math.random(1, 5)
	if rand == 1 then
		doPlayerSay(cid, "Jingle bells, jingle bells..." ,16)
		doSendMagicEffect(cid, frompos, 22)
	elseif rand == 2 then
		doPlayerSay(cid, "Ho ho ho!" ,16)
	elseif rand == 3 then
		doPlayerSay(cid, "Have you been naughty?",16)
	elseif rand == 4 then
		doPlayerSay(cid, "Have you been nice?",16)
	elseif rand == 5 then
		doPlayerSay(cid, "Merry Christmas!",16)
	end
	return 1
end