function onUse(cid, item, frompos, item2, topos)

        Player = getPlayerPosition(cid)
        GetPos = getThingfromPos(Player)

        if item.itemid == 5475 then
         doTeleportThing(GetPos.uid,topos)
         doCreatureAddHealth(cid,-getPlayerHealth(cid))
         doSendAnimatedText(topos,"We Said..",50)
         doTransformItem(item.uid,item.itemid-1)
        else
         doTransformItem(item.uid,item.itemid+1)
        end
        
 return 1
end