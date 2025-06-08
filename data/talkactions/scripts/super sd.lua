---script by Zieli---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,6527,120) == 1 then
        doPlayerAddItem(cid,2263,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_30)
doSendAnimatedText(getPlayerPosition(cid), "Super Sd",TEXTCOLOR_BLACK)

    else
        doPlayerSendCancel(cid,"Voce não tem ASP suficiente. Voce precisa de 120 Aggy Sorf Points")
        doSendAnimatedText(getPlayerPosition(cid), "SEM GRANA",TEXTCOLOR_RED)
    end
end