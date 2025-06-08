---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,14000,1) == 1 then
        doPlayerAddItem(cid,14000,1)
    else
        doPlayerSendCancel(cid,"Informaçoes")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Item Imortais\'s: !imortalboots,!imortalarmor,!imortalhelmet,!imortallegs.")
    end
end

