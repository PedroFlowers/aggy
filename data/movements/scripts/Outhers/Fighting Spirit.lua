function onEquip(cid, item, position, fromPosition)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Os espiritos sagrados agora acompanham este bravo guerreiro.")
doSendMagicEffect(getPlayerPosition(cid), 13)
doTransformItem(item.uid,5884)
return TRUE
end

function onDeEquip(cid, item, position, fromPosition)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "O fighting spirit foi removido do slot ring.")
doSendMagicEffect(getPlayerPosition(cid), 13)
doRemoveItem(item.uid,1)
return TRUE
end