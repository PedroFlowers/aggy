function onUse(cid, item, frompos, item2, topos)

container = doPlayerAddItem(cid, 2000., 1)

if item.itemid == 1945 and doPlayerRemoveMoney(cid,3000000) == 1 then
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)

doTransformItem(item.uid,item.itemid+1)

elseif item.itemid == 1946 and doPlayerRemoveMoney(cid,3000000) == 1 then
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doAddContainerItem(container, 6558, 1)
doTransformItem(item.uid,item.itemid-1)

else
doPlayerSendCancel(cid,"Desculpe, Você Não Tem Dinheiro Suficiente.BP Blood 3kk")
end
return 1
end
