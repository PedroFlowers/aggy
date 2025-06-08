function onUse(cid, item, frompos, item2, topos)

if item2.itemid > 1210 and item2.itemid < 1220 then
if doPlayerRemoveItem(cid,2091,1) == 1 then


   if item2.itemid == 1212 then
     doTransformItem(item2.uid,1214)

   elseif item2.itemid == 387 then
     doTransformItem(item2.uid,4877)

   elseif item2.itemid == 1449 then
     doTransformItem(item2.uid,4878)

   elseif item2.itemid == 2704 then
     doTransformItem(item2.uid,4879)

   elseif item2.itemid == 2705 then
     doTransformItem(item2.uid,4880)

   elseif item2.itemid == 2706 then
     doTransformItem(item2.uid,4881)

   elseif item2.itemid == 2707 then
     doTransformItem(item2.uid,4882)
   end
   doSendMagicEffect(topos,2)
   doPlayerSendTextMessage(cid,22,"Voce abriu a Porta")
   doDecayItem(item2.uid)
else
  doPlayerSendCancel(cid,"Voce nao tem a Chave Procure")
end
else
doPlayerSendCancel(cid,"Voce não podi usar esse item ai.")
end

return 1
end