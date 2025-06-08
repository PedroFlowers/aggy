---script by Zieli---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,13685,10) == 1 then
        doPlayerAddItem(cid,13684,1)
    else
        doPlayerSendCancel(cid,"Voce não tem 10 ruby coins")
        doSendAnimatedText(getPlayerPosition(cid), "Third!aol",TEXTCOLOR_WHITE_EXP)
    end
end

