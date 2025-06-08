---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,6547,200) == 1 then
        doPlayerAddItem(cid,2306,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_50)
doSendAnimatedText(getPlayerPosition(cid), "T UH",TEXTCOLOR_YELLOW)

    else
        doPlayerSendCancel(cid,"Voce não tem Templar Coins suficiente. Voce precisa de 200 Templar Coins.")
        doSendAnimatedText(getPlayerPosition(cid), "SEM GRANA",TEXTCOLOR_RED)
    end
end