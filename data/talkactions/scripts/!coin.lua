---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,13685,100) == 1 then
        doPlayerAddItem(cid,6548,1)
    else
        doPlayerSendCancel(cid,"Voce não tem 100 ruby coins")
        doSendAnimatedText(getPlayerPosition(cid), "Pobre",TEXTCOLOR_WHITE_EXP)
    end
end

