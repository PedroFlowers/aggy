local config = {
porta = 9090 -- uid da porta
item2 = 5901 -- lixo
lvl = 90 -- level necessário para passar
dentro = {x=1008, y=995, z=7}
fora = {x=1008, y=993, z=7}
}




function onUse(cid, item, fromPosition, itemEx, toPosition)
   if item.uid == porta then
      doPlayerSendTextMessage(cid, 21, "Você terá que arrombar a porta!")
   else
      if getPlayerLevel(cid) >= lvl then
         doPlayerSendTextMessage(cid, 21, "Você conseguil arrombar a porta!")
         local pos = getCreaturePosition(cid)
         if pos.x == dentro.x and pos.y == dentro.y and pos.z == dentro.z then
            doTeleportThing(cid, fora)
         else
            doTeleportThing(cid, dentro)
         end
         doSendMagicEffect(toPosition, 2)
      else
         doPlayerSendCancel(cid, "Você nao tinha level suficiente, por isso quebrou sua Crownbar!")
         doTransformItem(item.uid, item2)
         doSendMagicEffect(toPosition, 3)
      end
   end
   return TRUE
end