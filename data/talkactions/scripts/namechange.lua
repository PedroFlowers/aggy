function onSay(cid, words, param)   
local maxLen = 15 -- tamanho maximo do nome  
local moneyNeed = 1000 ------ Dinheiro necessário para mudar o nome   
local proibido = {"!","@","*"} -- simbolos proibidos 
 
  
      for i = 1, #proibido do            
          if string.find(tostring(param), proibido[i]) then               
             doPlayerSendCancel(cid,"Não pode usar símbolos em seu nome.")               
             return TRUE           
          end       
      end                
       
      if tostring(param) == "" then -- checkar se não é nome vazio          
         doPlayerSendCancel(cid, "Você deve informar um nome.")          
         return TRUE        
      end               
       
      if string.len(tostring(param)) > maxLen then           
         doPlayerSendCancel(cid, "Você pode usar no máximo " .. maxLen .. " letras.")           
         return TRUE        
      end              
       
      if not getTilePzInfo(getCreaturePosition(cid)) then        
         doPlayerSendCancel(cid,"So pode ser usado em pz.")        
         return TRUE        
      end                     
       
      if getPlayerMoney(cid=) >= moneyNeed then            
         doPlayerRemoveMoney(cid, moneyNeed)            
         db.executeQuery("UPDATE `players` SET `name` = '"..param.."' WHERE `id` = "..getPlayerGUID(cid)..";")             
         doPlayerSendTextMessage(cid,25,"Você será kickado em 5 segundos.")            
         addEvent(doRemoveCreature, 5*1000, cid, true)       
      else           
         doPlayerSendCancel(cid,"Você não possui " .. moneyNeed .. " gp's.")        
      end  
return TRUE  
end