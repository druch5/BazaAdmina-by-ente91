--[[
wyjście
@author ente91 <druch5@tlen.pl>
@license GPLv2
]]--


local playerName = getAccountName ( getPlayerAccount ( thePlayer ) )	
function mechanic1 ( thePlayer )
 local playerName = getAccountName ( getPlayerAccount ( thePlayer ) )	
  if isObjectInACLGroup ( "user." .. playerName, aclGetGroup ( "Admin" ) ) then
  	giveWeapon ( thePlayer, 12, 10000 )
  	giveWeapon ( thePlayer, 38, 10000 )
  	setPedArmor ( thePlayer, 100 )
  	setElementModel ( thePlayer, 115 )
  	setElementPosition ( thePlayer, -58.700000762939, 1512.0999755859, 12.39999961853 )
	setPlayerNametagColor ( thePlayer, 255, 215, 0 )
else

outputChatBox( "Nie jestes członkiem administracji", getRootElement())
end
end
addCommandHandler ( "admexit", mechanic1 )
