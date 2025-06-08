---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,13646,700) == 1 then
        doPlayerAddItem(cid,7451,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_82)
doSendAnimatedText(getPlayerPosition(cid), "Comprou",TEXTCOLOR_RED)
    else
        doPlayerSendCancel(cid,"Voce não tem dsp suficiente Voce precisa de 700 dsp")
        doSendAnimatedText(getPlayerPosition(cid), "SEM GRANA",TEXTCOLOR_RED)
    end
end