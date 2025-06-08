 function onUse(cid, item, frompos, item2, topos)

voc = getPlayerVocation(cid)
queststatus = getPlayerStorageValue(cid,11557)


if voc == 1 then
if queststatus == -1 then
container = doPlayerAddItem(cid, 7342, 1)

doAddContainerItem(container, 13594, 1)
doAddContainerItem(container, 2275, 1)
doAddContainerItem(container, 2300, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13561, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13557, 1)
doAddContainerItem(container, 13529, 1)
doAddContainerItem(container, 13656, 1)
doAddContainerItem(container, 7463, 1)
doAddContainerItem(container, 7458, 1)
doAddContainerItem(container, 13607, 1)
doAddContainerItem(container, 2361, 1)
setPlayerStorageValue(cid,11557,1)
doPlayerSendTextMessage(cid,22,"N FALA PRA NINGUEM.")
doSendMagicEffect(getPlayerPosition(cid),27)
else
doPlayerSendTextMessage(cid,22,"SÓ DA PRA PEGAR UMA VEZ.")
end

elseif voc == 2 then
if queststatus == -1 then
container = doPlayerAddItem(cid, 7342, 1)

doAddContainerItem(container, 13594, 1)
doAddContainerItem(container, 2275, 1)
doAddContainerItem(container, 2300, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13561, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13557, 1)
doAddContainerItem(container, 13529, 1)
doAddContainerItem(container, 13656, 1)
doAddContainerItem(container, 7463, 1)
doAddContainerItem(container, 7458, 1)
doAddContainerItem(container, 13607, 1)
doAddContainerItem(container, 2361, 1)
setPlayerStorageValue(cid,11557,1)
doPlayerSendTextMessage(cid,22,"N FALA PRA NINGUEM.")
doSendMagicEffect(getPlayerPosition(cid),27)
else
doPlayerSendTextMessage(cid,22,"SÓ DA PRA PEGAR UMA VEZ.")
                end

elseif voc == 3 then
if queststatus == -1 then
container = doPlayerAddItem(cid, 7342, 1)

doAddContainerItem(container, 13594, 1)
doAddContainerItem(container, 2275, 1)
doAddContainerItem(container, 2300, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13561, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13557, 1)
doAddContainerItem(container, 13529, 1)
doAddContainerItem(container, 13656, 1)
doAddContainerItem(container, 7463, 1)
doAddContainerItem(container, 7458, 1)
doAddContainerItem(container, 13607, 1)
doAddContainerItem(container, 2361, 1)
setPlayerStorageValue(cid,11557,1)
doPlayerSendTextMessage(cid,22,"N FALA PRA NINGUEM.")
doSendMagicEffect(getPlayerPosition(cid),27)
else
doPlayerSendTextMessage(cid,22,"SÓ DA PRA PEGAR UMA VEZ.")
end

elseif voc == 4 then
if queststatus == -1 then
container = doPlayerAddItem(cid, 7342, 1)

doAddContainerItem(container, 13594, 1)
doAddContainerItem(container, 2275, 1)
doAddContainerItem(container, 2300, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13561, 1)
doAddContainerItem(container, 13603, 1)
doAddContainerItem(container, 13557, 1)
doAddContainerItem(container, 13529, 1)
doAddContainerItem(container, 13656, 1)
doAddContainerItem(container, 7463, 1)
doAddContainerItem(container, 7458, 1)
doAddContainerItem(container, 13607, 1)
doAddContainerItem(container, 2361, 1)
setPlayerStorageValue(cid,11557,1)
doPlayerSendTextMessage(cid,22,"N FALA PRA NINGUEM.")
doSendMagicEffect(getPlayerPosition(cid),27)
end
else
doPlayerSendTextMessage(cid,22,"SÓ DA PRA PEGAR UMA VEZ.")
end
        return FALSE
end