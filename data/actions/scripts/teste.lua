function onUse(cid, item, frompos, item2, topos)
        
        num=0
        repeat
                if getPlayerAccess(cid) == 5 then
                        n = math.random(0,25)
                        doSendMagicEffect(frompos,n) 
                else
                        doSummonCreature("[color="#FF0000"]rotworm[/color]", frompos)
                end
                num=num+1
        until num>4

        doRemoveItem(item.uid, 1)
        return 1

end