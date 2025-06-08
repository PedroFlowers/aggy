---script by Zieli---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,5905,400) == 1 then
        doPlayerAddItem(cid,7458,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_30)
doSendAnimatedText(getPlayerPosition(cid), "Comprou",TEXTCOLOR_RED)
   else
        doPlayerSendCancel(cid,"Voce não tem Pearl of Aggy Sorf suficiente. Voce precisa de 400 Pearl of Aggy Sorf")
        doSendAnimatedText(getPlayerPosition(cid), "SEM GRANA",TEXTCOLOR_RED)
    end
end