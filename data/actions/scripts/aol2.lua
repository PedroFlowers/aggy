function onSay(cid, words, param)
  if doPlayerRemoveItem(cid, 2197, 1) == 1 then
  doPlayerAddItem(cid, 13682, 1)
  else
                          doPlayerSendCancel(cid, 'You don\'t have enough money.')
                          doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
                  end
                  end