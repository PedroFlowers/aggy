---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,14000,1) == 1 then
        doPlayerAddItem(cid,14000,1)
    else
        doPlayerSendCancel(cid,"Informaçoes")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Item Templar\'s: !templarboots,!templararmor,!templarhelmet,!templarlegs,!templaraol.")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Runes Templar\'s: !templarmana,!templaruh,!templartrap,!templartime.")
    end
end

