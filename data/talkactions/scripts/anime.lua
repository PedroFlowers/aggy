local velocidade = 3000 -- 3 segundos

local color1 = TEXTCOLOR_BLUE
local color2 = TEXTCOLOR_LIGHTBLUE
local color3 = TEXTCOLOR_LIGHTGREEN
local color5 = TEXTCOLOR_RED
local color6 = TEXTCOLOR_YELLOW
local color7 = TEXTCOLOR_PINK
local color8 = TEXTCOLOR_ORANGE
local color9 = TEXTCOLOR_GREEN
local function loop(valores)

doSendAnimatedText({x=997, y=995, z=7},"Teleports",color5)

addEvent(loop, velocidade, valore) -- N�o remova isso
end

function onSay(cid, words, param)
valore = {cid = cid, topos = topos}
addEvent(loop, velocidade, valore)
end