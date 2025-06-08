---script by Zieli---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,6527,300) == 1 then
        doPlayerAddItem(cid,13654,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_30)
doSendAnimatedText(getPlayerPosition(cid), "Comprou",TEXTCOLOR_RED)
    else
        doPlayerSendCancel(cid,"Voce não tem asp suficiente Voce precisa de 300 asp")
        doSendAnimatedText(getPlayerPosition(cid), "SEM GRANA",TEXTCOLOR_RED)
    end
end