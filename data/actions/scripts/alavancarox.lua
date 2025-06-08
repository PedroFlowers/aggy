function onUse(cid, item, frompos, item2, topos)
if item.uid == 4506 then

backpos = {x=48, y=46, z=6, stackpos=1}

doCreateItem(1988, 1, backpos)

doSendMagicEffect(topos,14)
doPlayerSendTextMessage(cid,22,"Você Acabou de Ganhar uma Backpack.")
end
