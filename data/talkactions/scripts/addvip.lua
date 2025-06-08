function onSay(cid,words,param)



if getPlayerAccess(cid) > 5 and param == "" and getPlayerStorageValue(getPlayerByName(param), 13550) == 1 or getPlayerStorageValue(getPlayerByName(param), 13550) == 0 then

doPlayerSendTextMessage(getPlayerByName(param),20, 'Uma VIP acabou de ser adicionada a você!')
setPlayerStorageValue(getPlayerByName(param), 13550, 1)
doPlayerSendTextMessage(cid,21,'Você acabou de adcionar uma VIP!')
elseif getPlayerAccess(cid) < 5 then
doPlayerSendTextMessage(cid,25,"Você não pode adcionar VIPs.")

elseif getPlayerStorageValue(getPlayerByName(param), 13550) == 1 then
doPlayerSendTextMessage(cid,25,"Este player já tem VIP.")
else
doPlayerSendTextMessage(cid,21,"Você precisa de escrever o nome do player que vai ganhar a VIP.")

end
end