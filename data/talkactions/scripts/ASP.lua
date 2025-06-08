---script by Zieli---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,14000,1) == 1 then
        doPlayerAddItem(cid,14000,1)
    else
        doPlayerSendCancel(cid,"Informaçoes")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Item Vip\'s: !vipboots,!viparmor,!viphelmet,!viplegs,!vipwand,!vipsword ,!vipbow ,!aggyaol.")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Item Foda\'s: !aggysorfarmor,!aggysorflegs ,!aggysorfhelmet ,!aggysorfboots.")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Runes\'s: !supermana,!superuh ,!supersd,!superexplo.")  
    end
end

