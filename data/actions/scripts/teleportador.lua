-- Item que teleporta um player para uma posi��o salva pelo pr�prio player --
-- Mais uma action feita por Yorun (Diego) --
-- Coment�rios por Yorun (Diego) --
-- Galera por favor n�o ligo se alguem for usar meu c�digo, pelo contr�rio acho at� legal, mas por favor deixem os meus cr�ditos =) --
-- Obrigado! --

function onUse(cid, item, frompos, item2, topos)
        -- in�cio do bloco de inicializa��o de Vari�veis --
        level = getPlayerLevel(cid)
        spos = nil
        manamax = 0
        manaatual = 0
        vidamax = 0
        vidaatual = 0
        -- fim do bloco de inicializa��o de vari�veis
        -- in�cio do bloco de if de escolha do item (4853/4854) --
        if item.itemid == 4853 then
                -- bloco que testa se onde foi usado eh uma criatura viva --
                testplayer = isCreature(cid, item2.uid)
                -- fim do teste de criatura
                -- se for criatura viva ent�o a posi��o � salva na var�avel (savpos) e depois salva no player --
                if testplayer ~= 0  then
                        savpos = {x=getThingPos(item2.uid).x, y=getThingPos(item2.uid).y, z=getThingPos(item2.uid).z, stackpos=253}
                        setPlayerStorageValue(cid, 111, savpos.x)
                        setPlayerStorageValue(cid, 222, savpos.y)
                        setPlayerStorageValue(cid, 333, savpos.z)
                        doSendMagicEffect(topos, 26)
                        doPlayerSendTextMessage(cid, 22, 'Posi��o: (X: ' .. savpos.x .. ' Y: ' .. savpos.y .. ' Z: ' .. savpos.z ..'). Foi salva com sucesso.')
                        doTransformItem(item.uid,4854)
                -- se n�o for uma criatura viva, � eviada uma mensagem ao player --
                else
                        doPlayerSendTextMessage(cid, 18, 'Voc� deve selecionar uma criatura viva.')
                        doSendMagicEffect(frompos, 2)
                end
        elseif item.itemid == 4854 then
                -- atribui��o dos valores salvos anteriormente (savpos) --
                xpos = getPlayerStorageValue(cid, 111)
                ypos = getPlayerStorageValue(cid, 222)
                zpos = getPlayerStorageValue(cid, 333)
                spos = {x=xpos, y=ypos, z=zpos} 
                voc = getPlayerVocation(cid) -- obtendo a voca��o do player --
                -- dependendo a vaca��o a formula de dano muda --
                if voc == 1 or voc == 16 then 
                        manamax = ((level-8)*30)+35 -- f�rmula de dano na mana, igualmente para as outras voca��es, exceto pelos valores --
                        manaatual = getPlayerMana(cid)
                        vidamax = ((level-8)*5)+185 -- f�rmula de dano na vida, igualmente para as outras voca��es, exceto pelos valores --
                        vidaatual = getPlayerHealth(cid)
                        -- se a posi��o (X) salva anteriormente for igual a 0 ent�o � envia uma mensagem --
                        if xpos == 0 then 
                                doPlayerSendTextMessage(cid, 18, 'Posi��o vazia, selecione uma posi��o para teleportar.')
                                doSendMagicEffect(frompos, 2)
                                doTransformItem(item.uid, 4853)
                        -- se posi��o (X) for diferente de 0 e a mana estiver cheia, ent�o vai teleportar o char para a posi��o salva, adicionar o dano na vida e mana. --
                        elseif (manaatual >= manamax) and (vidaatual >= vidamax)then
                                doTeleportThing(cid, spos)
                                doTransformItem(item.uid, 4853)
                                doSendMagicEffect(spos, 10)
                                doPlayerSendTextMessage(cid, 22, 'Voc� foi teleportado para a posi��o: (X: ' .. xpos .. ' Y: ' .. ypos .. ' Z: ' .. zpos ..').')
                                doPlayerAddMana(cid, -manamax/2)
                                doPlayerAddHealth(cid, -vidamax/2)
                                xpos = setPlayerStorageValue(cid, 111, nil)
                        -- se a vida ou a mana n�o estiverem cheias, ent�o vai ser enviada uma mensagem alertando que ambas precisam estar cheias. --
                        elseif manaatual < manamax then
                                if vidaatual < vidamax then
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida e de ' .. manamax ..' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. manamax ..' de mana para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        elseif vidaatual < vidamax then
                                if manaatual < manamax then
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida e de ' .. manamax .. ' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        end
                -- a partir deste ponto � exatamente igual, mudando apenas os valores, pois s�o voca��es diferentes --
                elseif voc == 2 or voc == 6 then
                        manamax = ((level-8)*30)+35
                        manaatual = getPlayerMana(cid)
                        vidamax = ((level-8)*5)+185
                        vidaatual = getPlayerHealth(cid)
                        if xpos == 0 then
                                doPlayerSendTextMessage(cid, 18, 'Posi��o vazia, selecione uma posi��o para teleportar.')
                                doSendMagicEffect(frompos, 2)
                                doTransformItem(item.uid, 4853)
                        elseif (manaatual >= manamax) and (vidaatual >= vidamax)then 
                                doTeleportThing(cid, spos)
                                doTransformItem(item.uid, 4853)
                                doSendMagicEffect(spos, 10)
                                doPlayerSendTextMessage(cid, 22, 'Voc� foi teleportado para a posi��o: (X: ' .. xpos .. ' Y: ' .. ypos .. ' Z: ' .. zpos ..').')
                                doPlayerAddMana(cid, -manamax/2)
                                doPlayerAddHealth(cid, -vidamax/2)
                                xpos = setPlayerStorageValue(cid, 111, nil)
                        elseif manaatual < manamax then
                                if vidaatual < vidamax then
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida e de ' .. manamax ..' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. manamax ..' de mana para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        elseif vidaatual < vidamax then
                                if manaatual < manamax then
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida e de ' .. manamax .. ' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        end                     
                elseif voc == 3 or voc == 7 then
                        manamax = ((level-8)*15)+35
                        manaatual = getPlayerMana(cid)
                        vidamax = ((level-8)*10)+185
                        vidaatual = getPlayerHealth(cid)
                        if xpos == 0 then
                                doPlayerSendTextMessage(cid, 18, 'Posi��o vazia, selecione uma posi��o para teleportar.')
                                doSendMagicEffect(frompos, 2)
                                doTransformItem(item.uid, 4853)
                        elseif (manaatual >= manamax) and (vidaatual >= vidamax)then
                                doTeleportThing(cid, spos)
                                doTransformItem(item.uid, 4853)
                                doSendMagicEffect(spos, 10)
                                doPlayerSendTextMessage(cid, 22, 'Voc� foi teleportado para a posi��o: (X: ' .. xpos .. ' Y: ' .. ypos .. ' Z: ' .. zpos ..').')
                                doPlayerAddMana(cid, -manamax/2)
                                doPlayerAddHealth(cid, -vidamax/2)
                                xpos = setPlayerStorageValue(cid, 111, nil)
                        elseif manaatual < manamax then
                                if vidaatual < vidamax then
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida e de ' .. manamax ..' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. manamax ..' de mana para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        elseif vidaatual < vidamax then
                                if manaatual < manamax then
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida e de ' .. manamax .. ' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        end
                elseif voc == 4 or voc == 8 then
                        manamax = ((level-8)*5)+35
                        manaatual = getPlayerMana(cid)
                        vidamax = ((level-8)*15)+185
                        vidaatual = getPlayerHealth(cid)
                        if xpos == 0 then
                                doPlayerSendTextMessage(cid, 18, 'Posi��o vazia, selecione uma posi��o para teleportar.')
                                doSendMagicEffect(frompos, 2)
                                doTransformItem(item.uid, 4853)
                        elseif (manaatual >= manamax) and (vidaatual >= vidamax)then
                                doTeleportThing(cid, spos)
                                doTransformItem(item.uid, 4853)
                                doSendMagicEffect(spos, 10)
                                doPlayerSendTextMessage(cid, 22, 'Voc� foi teleportado para a posi��o: (X: ' .. xpos .. ' Y: ' .. ypos .. ' Z: ' .. zpos ..').')
                                doPlayerAddMana(cid, -manamax/2)
                                doPlayerAddHealth(cid, -vidamax/2)
                                xpos = setPlayerStorageValue(cid, 111, nil)
                        elseif manaatual < manamax then
                                if vidaatual < vidamax then
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida e de ' .. manamax ..' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. manamax ..' de mana para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        elseif vidaatual < vidamax then
                                if manaatual < manamax then
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida e de ' .. manamax .. ' de mana para usar este recurso.')
                                else
                                        doPlayerSendTextMessage(cid, 18, 'Voc� precisa de ' .. vidamax ..' de vida para usar este recurso.')
                                end
                                doSendMagicEffect(frompos, 2)
                        end
                -- se a vo��o do player for diferente das conhecidas, ou se o player n�o tiver voca��o, ent�o ser� enviada uma mensagem avisando que a voca��o n�o pode usar este recurso. --
                else
                        doPlayerSendTextMessage(cid, 18, 'Sua voca��oo n�o suporta este recurso evolua at� o level 8 e adiquira uma voca��o. Se voc� est� acima do level 8 e ja possui uma voca��o, contate seu GOD ou GM')
                        doSendMagicEffect(frompos, 2)
                end
        -- se o item n�o foi configurado corretamente ser� enviada uma mensagem avisando, no caso se os itens forem diferentes de (4853 ou 4854). --
        else
                doPlayerSendCancel(cid, 'Erro! Item incorreto.')
                doPlayerSendTextMessage(cid, 18, 'Erro! Item incorreto. Altere seu arquivo "actions.xml" corretamente! Se voc� for um player alerte seu GOD ou GM.')
                doPlayerSendTextMessage(cid, 22, 'Desenvolvedor do Script: Diego (Yorun), Vers�o do Script: 1.4, Teste: ( OK ). Obrigado por usar meu script!')
                doSendMagicEffect(frompos, 2)
        end
        -- return 0, como � uma fun��o ent�o retorna um valor, no caso 0, pois n�o vamos precisar deste retorno futuramente. --
        return 0
end
-- Fim =) By Yorun (Diego) --