---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,6527,10) == 1 then
        doPlayerAddItem(cid,2196,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_30)
doSendAnimatedText(getPlayerPosition(cid), "A-S AOL",TEXTCOLOR_RED)

    else
        doPlayerSendCancel(cid,"Voce não tem Asp suficiente Voce precisa de 10 Asp")
        doSendAnimatedText(getPlayerPosition(cid), "Pobreee",TEXTCOLOR_RED)
    end
end