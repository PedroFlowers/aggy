---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,6527,100) == 1 then
        doPlayerAddItem(cid,6547,50)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_30)
doSendAnimatedText(getPlayerPosition(cid), "T Coin",TEXTCOLOR_RED)
    else
        doPlayerSendCancel(cid,"Voce não tem asp suficiente Voce precisa de 100 asp")
        doSendAnimatedText(getPlayerPosition(cid), "Pobre",TEXTCOLOR_RED)
    end
end