function onStepIn(cid, item, pos)

if isPlayer(cid) == 1 then

doPlayerAddHealth(cid,-20)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_BUBBLES)
doSendAnimatedText(getCreaturePosition(cid), "20", TEXTCOLOR_BLUE)

end
end