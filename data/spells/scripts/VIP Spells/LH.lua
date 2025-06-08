function onCastSpell(cid, var)
	doSendAnimatedText(getCreaturePosition(cid), "Light!", TEXTCOLOR_WHITE_EXP)
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_GREEN)
	local pos = getPlayerPosition(cid)
	doSendMagicEffect(pos, CONST_ME_MAGIC_BLUE)
	return doSetCreatureLight(cid, 1000, 1000, (1000*1000+1000)*1000)
end