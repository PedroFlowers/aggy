---script by Zieli---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,2197,1) == 1 then
        doPlayerAddItem(cid,13682,1)
    else
        doPlayerSendCancel(cid,"Sorry u dont a stone skin amulet")
    end
end