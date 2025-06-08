local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -8.9, -150, -8.9, 150)



local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

function onGetFormulaValues(cid, level, maglevel)
skill = getPlayerSkill(cid,1)
min = -((skill*80)+level)
max = -((skill*82)+level)
return min, max
end

setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(cid, var)
rand = math.random(1,1000)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Vip Sword!", TEXTCOLOR_LIGHTGREY)
doPlayerAddHealth(cid,1000)
doCombat(cid, combat2, var)
end
rand = math.random(97,1000)
if rand == 99 then
doSendAnimatedText(getPlayerPosition(cid), "Vip Sword!", TEXTCOLOR_LIGHTGREY)
doPlayerAddHealth(cid,1000)
rand = math.random(90,100)
doCombat(cid, combat2, var)
else
doCombat(cid, combat, var)
end
end

