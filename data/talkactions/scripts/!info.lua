---script by Zieli---
      function onSay(cid, words, param)

    if doPlayerRemoveItem(cid,14000,1) == 1 then
        doPlayerAddItem(cid,14000,1)
    else
        doPlayerSendCancel(cid,"Informaçoes")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Para Compra aol é: !aol1 ,!aol2 ,!aol3.")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "AnimatedText: aff,lol,noob,hunted.")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Item Vip\'s: !vipboots,!viparmor,!vipshield,!viphelmet,!viplegs,!vipwand,!shurikenVip.")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Item Vip\'s: !Black.Helmet.Heale ,!black.soft.heale ,!Black.ball.down.abs ,!Sword.atak.dead")
        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Magias: aprisionar,Explosion Bolt,Explosion burst,Exori Slayer,Gravita cleric.")
    end
end

