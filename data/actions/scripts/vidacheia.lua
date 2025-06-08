function onUse(cid, item, frompos, item2, topos)


      if item.itemid == 1378 then
        doPlayerAddHealth(cid,1500)
          doPlayerAddMana(cid,1500)
            doSendMagicEffect(frompos,12)
             doPlayerSay(cid,"Vida Up!",16)
      else 




  end
    return 1
      end