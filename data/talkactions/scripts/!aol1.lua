---script by Zieli---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,2160,20) == 1 then
        doPlayerAddItem(cid,13682,1)
    else
        doPlayerSendCancel(cid,"Voce não tem 200k")
        doSendAnimatedText(getPlayerPosition(cid), "First!aol",TEXTCOLOR_WHITE_EXP)
    end
end