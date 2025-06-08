--New food system by Ta4e, vomit system by Colex, both systems fusion by Sun--
MAX_FOOD = 1200
function onUse(cid, item, frompos, item2, topos)
if item.itemid == 5678 then
 food = 96
doPlayerSay(cid, "Gulp.", 16)
elseif item.itemid == 2362 then
 food = 96
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2666 then
 food = 180
                   doPlayerSay(cid, "Munch.", 16)
elseif item.itemid == 2667 then
 food = 144
doPlayerSay(cid, "Munch.", 16)
elseif item.itemid == 2668 then
 food = 120
doPlayerSay(cid, "Mmmm.", 16)
elseif item.itemid == 2669 then
 food = 254
doPlayerSay(cid, "Munch.", 16)
elseif item.itemid == 2670 then
 food = 196
doPlayerSay(cid, "Munch.", 16)
elseif item.itemid == 2671 then
 food = 360
doPlayerSay(cid, "Chomp.", 16)
elseif item.itemid == 2672 then
 food = 720
doPlayerSay(cid, "Chomp.", 16)
elseif item.itemid == 2673 then
 food = 56
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2674 then
 food = 72
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2675 then
 food = 156
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2676 then
 food = 96
elseif item.itemid == 2677 then
 food = 12
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2678 then
 food = 160
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2679 then
 food = 12
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2680 then
 food = 24
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2681 then
 food = 108
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2682 then
 food = 240
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2683 then
 food = 240
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2684 then
 food = 96
doPlayerSay(cid, "Runch.", 16)
elseif item.itemid == 2685 then
 food = 46
doPlayerSay(cid, "Yum.", 16)
elseif item.itemid == 2686 then
 food = 108
elseif item.itemid == 2687 then
 food = 24
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2688 then
 food = 126
elseif item.itemid == 2689 then
 food = 120
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2690 then
 food = 72
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2691 then
 food = 96
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2695 then
 food = 96
doPlayerSay(cid, "Gulp.", 16)
elseif item.itemid == 2696 then
 food = 108
doPlayerSay(cid, "Smack.", 16)
elseif item.itemid == 2787 then
 food = 72
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2788 then
 food = 48
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2789 then
 food = 264
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2790 then
 food = 84
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2791 then
 food = 84
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2792 then
 food = 140
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2793 then
 food = 126
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2794 then
 food = 111
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2795 then
 food = 136
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 2796 then
 food = 60
doPlayerSay(cid, "Crunch.", 16)
elseif item.itemid == 5097 then
 food = 48
doPlayerSay(cid, "Yum.", 16)
else
 return 0
end

vomit = math.random(1,50)

if (getPlayerFood(cid) + food > MAX_FOOD) then
if getPlayerAccess(cid) > 2 then
doPlayerFeed(cid,food)
doRemoveItem(item.uid,1)
return 1
else
if vomit == 1 then
doPlayerSendCancel(cid,"You are full, You have vomited.")
doSendMagicEffect(getPlayerPosition(cid),8)
doPlayerAddHealth(cid,-vomit)
vom = doCreateItem(2025,4,getPlayerPosition(cid))
doRemoveItem(item.uid,1)
doSetItemSpecialDescription(vom,"vomit")
doDecayItem(vom)
else
doPlayerSendCancel(cid,"You are full.")
end
return 1
end
end

doPlayerFeed(cid,food)
doRemoveItem(item.uid,1)
return 1
end