local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -8.0, -6800, -8.5, -17000)

local arr = {
{0, 1, 0},
{1, 3, 1},
{0, 1, 0}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
rand = math.random(98,100)
if rand == 99 then
doPlayerAddMana(cid,2000)
doSendAnimatedText(getPlayerPosition(cid), "Ex EXPLO", TEXTCOLOR_ORANGE)
doPlayerSay(cid, "Thsss!",16)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end