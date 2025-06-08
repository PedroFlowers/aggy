function onLogin(cid)
storage = getPlayerStorageValue(cid,9000)
if storage == -1 then
setPlayerStorageValue(cid,9000,0)
doPlayerSetTown(cid, x=50, y=50, z=7)
end
return TRUE
end