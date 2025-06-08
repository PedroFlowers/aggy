---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,14000,1) == 1 then
        doPlayerAddItem(cid,14000,1)
    else
        doPlayerSendCancel(cid,"Informaçoes")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Item Dark\'s: !darkarmor,!darklegs ,!darkhelmet ,!darkboots.")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Item Dark\'s: !deathsword,!darkside ,!darkcaster ,!chuninstar.")
    end
end

