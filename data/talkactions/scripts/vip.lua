---script by YaGo y Diego---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,6527,200) == 1 then
        doPlayerAddItem(cid,2141,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_87)
doSendAnimatedText(getPlayerPosition(cid), "VIP",TEXTCOLOR_WHITE_EXP)
    else
        doPlayerSendCancel(cid,"Voce não tem asp suficiente Voce precisa de 200 asp")
        doSendAnimatedText(getPlayerPosition(cid), "POBREEE",TEXTCOLOR_RED)
    end
end