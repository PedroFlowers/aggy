--Criado por YaGo,edited by YaGo y Diego
function onUse(cid, item, frompos, item2, topos)

itempos = {x=topos.x, y=topos.y, z=topos.z, stackpos=1}
item = getThingfromPos(itempos)
access = 5

if getPlayerAccess(cid) >= access then

doRemoveItem(item.uid,1)
doSendMagicEffect(itempos,2)
doPlayerSendTextMessage(cid,22,"Deleted.")
else
doPlayerSendTextMessage(cid,22,"Somente Players com acesso ' .. access .. ' Podem usa-la!")
end
return 1
end