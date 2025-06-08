---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,6547,3) == 1 then
        doPlayerAddItem(cid,2278,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_30)
doSendAnimatedText(getPlayerPosition(cid), "Comprou",TEXTCOLOR_RED)

    else
        doPlayerSendCancel(cid,"Voce não tem Imortal Coins suficiente Voce precisa de 3 Templar Coins")
        doSendAnimatedText(getPlayerPosition(cid), "SEM GRANA",TEXTCOLOR_RED)
    end
end