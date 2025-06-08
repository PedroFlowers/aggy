function onSay(cid, words, param)

if getItemRWInfo(cid,2197) and doPlayerRemoveItem(cid,2197,1) == TRUE then
doPlayerAddItem(cid,13682,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doPlayerSendCancel(cid, "Completed")

elseif getItemRWInfo(cid,2173) and doPlayerRemoveItem(cid,2173,1) == TRUE then
doPlayerAddItem(cid,13683,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doPlayerSendCancel(cid, "Completed")

elseif getItemRWInfo(cid,2125) and doPlayerRemoveItem(cid,2125,1) == TRUE then
doPlayerAddItem(cid,13684,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doPlayerSendCancel(cid, "Completed")

else
doPlayerSendCancel(cid, "Internal Erro")
end
end
