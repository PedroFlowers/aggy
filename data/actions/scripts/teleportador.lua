-- Item que teleporta um player para uma posição salva pelo próprio player --
-- Mais uma action feita por Yorun (Diego) --
-- Comentários por Yorun (Diego) --
-- Galera por favor não ligo se alguem for usar meu código, pelo contrário acho até legal, mas por favor deixem os meus créditos =) --
-- Obrigado! --

function onUse(cid, item, frompos, item2, topos)
        -- início do bloco de inicialização de Variáveis --
        level = getPlayerLevel(cid)
        spos = nil
        manamax = 0
        manaatual = 0
        vidamax = 0
        vidaatual = 0
        -- fim do bloco de inicialização de variáveis
        -- início do bloco de if de escolha do item (4853/4854) --
        if item.itemid == 4853 then
                -- bloco que testa se onde foi usado eh uma criatura viva --
                testplayer = isCreature(cid, item2.uid)
                -- fim do teste de criatura
                -- se for criatura viva então a posição é salva na varíavel (savpos) e depois salva no player --
                if testplayer ~= 0  then
                        savpos = {x=getThingPos(item2.uid).x, y=getThingPos(item2.uid).y, z=getThingPos(item2.uid).z, stackpos=253}
                        setPlayerStorageValue(cid, 111, savpos.x)
                        setPlayerStorageValue(cid, 222, savpos.y)
                        setPlayerStorageValue(cid, 333, savpos.z)
                        doSendMagicEffect(topos, 26)
                        doPlayerSendTextMessage(cid, 22, 'Posição: (X: ' .. savpos.x .. ' Y: ' .. savpos.y .. ' Z: ' .. savpos.z ..'). Foi salva com sucesso.')
                        doTransformItem(item.uid,4854)
                -- se não for uma criatura viva, é eviada uma mensagem ao player --
                else
                        doPlayerSendTextMessage(cid, 18, 'Você deve selecionar uma criatura viva.')
                        doSendMagicEffect(frompos, 2)
                end
        elseif item.itemid == 4854 then
                -- atribuição dos valores salvos anteriormente (savpos) --
                xpos = getPlayerStorageValue(cid, 111)
                ypos = getPlayerStorageValue(cid, 222)
                zpos = getPlayerStorageValue(cid, 333)
                spos = {x=xpos, y=ypos, z=zpos} 
                voc = getPlayerVocation(cid) -- obtendo a vocação do player --
                -- dependendo a vacação a formula de dano muda --
                if voc == 1 or voc == 16 then 
                        manamax = ((level-8)*30)+35 -- fórmula de dano na mana, igualmente para as outras vocações, exceto pelos valores --
                        manaatual = getPlayerMana(cid)
                        vidamax = ((level-8)*5)+185 -- fórmula de dano na vida, igualmente para as outras vocações, exceto pelos valores --
                        vidaatual = getPlayerHealth(cid)
                        -- se a posição (X) salva anteriormente for igual a 0 então é envia uma mensagem --
                        if xpos == 0 then 
                                doPlayerSendTextMessage(cid, 18, 'Posição vazia, selecione uma posição para teleportar.')
                                doSendMagicEffect(frompos, 2)
                                doTransformItem(item.uid, 4853)
                        -- se posição (X) for diferente de 0 e a mana estiver cheia, então vai teleportar o char para a posição salva, adicionar o dano na vida e mana. --
                        elseif (manaatual >= manamax) and (vidaatual >= vidamax)then
                                doTeleportThing(cid, spos)
                                doTransformItem(item.uid, 4853)
                                doSendMagicEffect(spos, 10)
                                doPlayerSendTextMessage(cid, 22, 'Você foi teleportado para a posição: (X: ' .. xpos .. ' Y: ' .. ypos .. ' Z: ' .. zpos ..').')
                                doPlayerAddMana(cid, -manamax/2)
                                doPlayerAddHealth(cid, -vidamax/2)
                                xpos = setPlayerStorageValue(cid, 111, nil)
                        -- se a vida ou a mana não estiverem cheias, então vai ser enviada uma mensagem alertando que ambas precisam estar cheias. --
                        elseif manaatual < manamax then
                                if vidaatual < vidamax then
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida e de ' .. manamax ..' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. manamax ..' de mana para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        elseif vidaatual < vidamax then
                                if manaatual < manamax then
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida e de ' .. manamax .. ' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        end
                -- a partir deste ponto é exatamente igual, mudando apenas os valores, pois são vocações diferentes --
                elseif voc == 2 or voc == 6 then
                        manamax = ((level-8)*30)+35
                        manaatual = getPlayerMana(cid)
                        vidamax = ((level-8)*5)+185
                        vidaatual = getPlayerHealth(cid)
                        if xpos == 0 then
                                doPlayerSendTextMessage(cid, 18, 'Posição vazia, selecione uma posição para teleportar.')
                                doSendMagicEffect(frompos, 2)
                                doTransformItem(item.uid, 4853)
                        elseif (manaatual >= manamax) and (vidaatual >= vidamax)then 
                                doTeleportThing(cid, spos)
                                doTransformItem(item.uid, 4853)
                                doSendMagicEffect(spos, 10)
                                doPlayerSendTextMessage(cid, 22, 'Você foi teleportado para a posição: (X: ' .. xpos .. ' Y: ' .. ypos .. ' Z: ' .. zpos ..').')
                                doPlayerAddMana(cid, -manamax/2)
                                doPlayerAddHealth(cid, -vidamax/2)
                                xpos = setPlayerStorageValue(cid, 111, nil)
                        elseif manaatual < manamax then
                                if vidaatual < vidamax then
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida e de ' .. manamax ..' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. manamax ..' de mana para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        elseif vidaatual < vidamax then
                                if manaatual < manamax then
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida e de ' .. manamax .. ' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        end                     
                elseif voc == 3 or voc == 7 then
                        manamax = ((level-8)*15)+35
                        manaatual = getPlayerMana(cid)
                        vidamax = ((level-8)*10)+185
                        vidaatual = getPlayerHealth(cid)
                        if xpos == 0 then
                                doPlayerSendTextMessage(cid, 18, 'Posição vazia, selecione uma posição para teleportar.')
                                doSendMagicEffect(frompos, 2)
                                doTransformItem(item.uid, 4853)
                        elseif (manaatual >= manamax) and (vidaatual >= vidamax)then
                                doTeleportThing(cid, spos)
                                doTransformItem(item.uid, 4853)
                                doSendMagicEffect(spos, 10)
                                doPlayerSendTextMessage(cid, 22, 'Você foi teleportado para a posição: (X: ' .. xpos .. ' Y: ' .. ypos .. ' Z: ' .. zpos ..').')
                                doPlayerAddMana(cid, -manamax/2)
                                doPlayerAddHealth(cid, -vidamax/2)
                                xpos = setPlayerStorageValue(cid, 111, nil)
                        elseif manaatual < manamax then
                                if vidaatual < vidamax then
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida e de ' .. manamax ..' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. manamax ..' de mana para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        elseif vidaatual < vidamax then
                                if manaatual < manamax then
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida e de ' .. manamax .. ' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        end
                elseif voc == 4 or voc == 8 then
                        manamax = ((level-8)*5)+35
                        manaatual = getPlayerMana(cid)
                        vidamax = ((level-8)*15)+185
                        vidaatual = getPlayerHealth(cid)
                        if xpos == 0 then
                                doPlayerSendTextMessage(cid, 18, 'Posição vazia, selecione uma posição para teleportar.')
                                doSendMagicEffect(frompos, 2)
                                doTransformItem(item.uid, 4853)
                        elseif (manaatual >= manamax) and (vidaatual >= vidamax)then
                                doTeleportThing(cid, spos)
                                doTransformItem(item.uid, 4853)
                                doSendMagicEffect(spos, 10)
                                doPlayerSendTextMessage(cid, 22, 'Você foi teleportado para a posição: (X: ' .. xpos .. ' Y: ' .. ypos .. ' Z: ' .. zpos ..').')
                                doPlayerAddMana(cid, -manamax/2)
                                doPlayerAddHealth(cid, -vidamax/2)
                                xpos = setPlayerStorageValue(cid, 111, nil)
                        elseif manaatual < manamax then
                                if vidaatual < vidamax then
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida e de ' .. manamax ..' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. manamax ..' de mana para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        elseif vidaatual < vidamax then
                                if manaatual < manamax then
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida e de ' .. manamax .. ' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Você precisa de ' .. vidamax ..' de vida para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        end
                -- se a voção do player for diferente das conhecidas, ou se o player não tiver vocação, então será enviada uma mensagem avisando que a vocação não pode usar este recurso. --
                else
                        doPlayerSendTextMessage(cid, 18, 'Sua vocaçãoo não suporta este recurso evolua até o level 8 e adiquira uma vocação. Se você está acima do level 8 e ja possui uma vocação, contate seu GOD ou GM')
                        doSendMagicEffect(frompos, 2)
                end
        -- se o item não foi configurado corretamente será enviada uma mensagem avisando, no caso se os itens forem diferentes de (4853 ou 4854). --
        else
                doPlayerSendCancel(cid, 'Erro! Item incorreto.')
                doPlayerSendTextMessage(cid, 18, 'Erro! Item incorreto. Altere seu arquivo "actions.xml" corretamente! Se você for um player alerte seu GOD ou GM.')
                doPlayerSendTextMessage(cid, 22, 'Desenvolvedor do Script: Diego (Yorun), Versão do Script: 1.4, Teste: ( OK ). Obrigado por usar meu script!')
                doSendMagicEffect(frompos, 2)
        end
        -- return 0, como é uma função então retorna um valor, no caso 0, pois não vamos precisar deste retorno futuramente. --
        return 0
end
-- Fim =) By Yorun (Diego) --