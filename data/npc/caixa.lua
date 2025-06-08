focus = 0
talk_start = 0
target = 0
following = false
attacking = false
winner = ''




function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('Vagabundo, nem fala xau.')
focus = 0
talk_start = 0
end
end


function onCreatureTurn(creature)

end
function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)




if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 3 then

selfSay('Bom dia, o que voce deseja? Seu premio da mega cena caso foi o ganhador?')
focus = cid
talk_start = os.clock()


elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
selfSay('Please wait')


elseif focus == cid then
talk_start = os.clock()





if msgcontains(msg, 'sim') or msgcontains(msg, 'premio') or msgcontains(msg, 'mega cena') then
receber = io.open("data/megacena/receber.lua" , "r")
winner = receber:read()
player = creatureGetName(cid)
if winner == creatureGetName(cid) then
buy(cid,2160,100,0)
selfSay('Parabéns, ai esta seu dinheiro, tome cuidado com essa grana. Deseja mais alguma coisa?')

ganhadores = io.open("./data/megacena/ganhadores.lua", "w+")
ganhadores:write("  --> "..player.."")
ganhadores:close()

receber = io.open("./data/megacena/receber.lua", "w")
receber:write("")
receber:close()

else
selfSay('Sai daqui seu ladrao filho duma [Palavrão Censurado], nimguem é otario!!')
focus = 0
talk_start = 0
receber:close()


end


elseif msgcontains(msg, 'fuck') then
 
selfSay('/kick ' .. creatureGetName(cid) .. '')

elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 3 then
selfSay('Flw, ' .. creatureGetName(cid) .. '!')
focus = 0
talk_start = 0

end
end
end

function onCreatureChangeOutfit(creature)

end

function onThink()
   
if (os.clock() - talk_start) > 30 then
       if focus > 0 then
          selfSay('Proximo plxx...')
       end
      focus = 0
    end
   if focus ~= 0 then
      if getDistanceToCreature(focus) > 3 then
         selfSay('flw, mal educado.')
         focus = 0
      end
   end
end 