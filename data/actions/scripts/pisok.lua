function onStepIn(cid, item, pos)

teleport1 = {x=102, y=112, z=7}

if item.actionid == 2550 then
voc = getPlayerVocation(cid)
if voc ~= 4 then
doPlayerSendCancel(cid,"Area Exclusiva Para Slayer.")
doTeleportThing(cid,teleport1)
else
doPlayerSendCancel(cid," ")
end
end