---script by Zieli---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,13685,5) == 1 then
        doPlayerAddItem(cid,13683,1)
    else
        doPlayerSendCancel(cid,"Voce não tem 5 ruby coins")
        doSendAnimatedText(getPlayerPosition(cid), "aolSecond",TEXTCOLOR_WHITE_EXP)
    end
end