local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false
function onThingMove(creature, thing, oldpos, oldstackpos)
end
 
function onCreatureAppear(creature)
end
 
function onCreatureDisappear(cid, pos)
   if focus == cid then
          selfSay('Até logo viajante.')
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
   msg = string.lower(msg)
   if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 4 then
    selfSay('Olá ' .. creatureGetName(cid) .. ', diga-me a senha e lhe ensinarei o segredo do universo.')
    focus = cid
    talk_start = os.clock()
   elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
    selfSay('Sorry, ' .. creatureGetName(cid) .. 'Eu falo com você em um instante.')
   elseif focus == cid then
  talk_start = os.clock()
  if msgcontains(msg, 'sacrifice') then
   buy(cid,2280,1,300)
   setPlayerStorageValue(cid,1357,1)
  elseif msgcontains(msg, 'bless') then
   buy(cid,2281,1,300)
   setPlayerStorageValue(cid,1358,1)
  elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
   selfSay('Até logo, ' .. creatureGetName(cid) .. '!')
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
     selfSay('O segredo do mundo nas mãos de um unico ser humano....')
    end
   focus = 0
   end
  if focus ~= 0 then
   if getDistanceToCreature(focus) > 5 then
    selfSay('Good bye then.')
    focus = 0
   end
  end
end