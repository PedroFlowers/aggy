function onSay(cid, words, param)
if(param == "buy") then
if doPlayerRemoveItem(cid,13685,1) == 1 then
local days = 2
local daysvalue = days * 24 * 60 * 60
local storageplayer = getPlayerStorageValue(cid, 15550)
local timenow = os.time()

if getPlayerStorageValue(cid, 15550) - os.time() <= 0 then
time = timenow + daysvalue
else
time = storageplayer + daysvalue
end

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Foram adicionados ".. days .." dias de VIP no seu character.")
setPlayerStorageValue(cid, 15550, time)

local quantity = math.floor((getPlayerStorageValue(cid, 15550) - timenow)/(24 * 60 * 60))
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você tem ".. quantity .." dias de VIP restantes.")
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você precisa de 5 backpack de 100kk.")
end

elseif(param == "days") then
local timenow = os.time()
local quantity = math.floor((getPlayerStorageValue(cid, 15550) - timenow)/(24 * 60 * 60))
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você tem ".. (quantity < 0 and 0 or quantity) .." dias de VIP no seu character.")
return TRUE
end
end