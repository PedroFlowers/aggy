---script by YaGo---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,6547,10) == 1 then
        doPlayerAddItem(cid,2135,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_30)
doSendAnimatedText(getPlayerPosition(cid), "T AOL",TEXTCOLOR_RED)

    else
        doPlayerSendCancel(cid,"Voce não tem Templar Coins suficiente Voce precisa de 10 Templar Coins")
        doSendAnimatedText(getPlayerPosition(cid), "Pobreee",TEXTCOLOR_RED)
    end
end