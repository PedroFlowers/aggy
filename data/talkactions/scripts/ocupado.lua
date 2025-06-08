local time = 120    -- 1 = 1 sec, 2 = 2 sec, ...

     local say_events = {}
local function SayText(cid)
    if isPlayer(cid) == TRUE then
         if say_events[getPlayerLevel(cid)] ~= nil then
             if isPlayer(cid) == TRUE then
                 doPlayerSay(cid, "Auto Mensagem: Estou Ocupado, e não posso vim a responder.",TALKTYPE_PRIVATE)
             end
             say_events[getPlayerLevel(cid)] = addEvent(SayText, time * 1000 / 2, cid)       
         end                                                       
    end
    return TRUE
end
function onSay(cid, words, param, channel) 
    if(param == '') then
      doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Exemples: (!ocupado \"on ou !ocupado \"off).")
     return true
     end
     if param == "on" then
        if isPlayer(cid) == TRUE then
	    doPlayerSendCancel(cid, "Você está em modo (Ocupado), Auto Mensagem de 2 em 2 minutos")
        end
        say_events[getPlayerLevel(cid)] = addEvent(SayText, time * 1000, cid)
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Você está em modo (Ocupado), Auto Mensagem de 2 em 2 minutos")
     elseif param == "off" then
            stopEvent(say_events[getPlayerLevel(cid)])
            say_events[getPlayerLevel(cid)] = nil
            doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Você está em modo (Livre).")
    end
    return TRUE
end
