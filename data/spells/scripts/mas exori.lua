area = {
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}
 
attackType = 4
needDirection = true
areaEffect = 0
animationEffect = 10
 
hitEffect = 17
damageEffect = 0
animationColor = 180
offensive = true
drawblood = true
 
UltimateExplosionObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect,
animationColor, offensive, drawblood, 0, 0)
 
function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
n = tonumber(var)   -- try to convert it to a number
if n ~= nil then
-- bugged
-- ultimateExplosionObject.minDmg = var+0
-- UltimateExplosionObject.maxDmg = var+0
 
UltimateExplosionObject.minDmg = 7500
UltimateExplosionObject.maxDmg = 9850
else
UltimateExplosionObject.minDmg = (level * 2 + maglv * 3) * 2.6 - 30
UltimateExplosionObject.maxDmg = (level * 2 + maglv * 3) * 3.0
end
 
return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, UltimateExplosionObject:ordered())
end
