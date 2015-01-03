--[[
login
@author ente91 <druch5@tlen.pl>
@license GPLv2
]]--

mechanic = createTeam ( "Administracja", 255, 215, 0 )

local playerName = getAccountName ( getPlayerAccount ( thePlayer ) )	
function mechanic1 ( thePlayer )
 local playerName = getAccountName ( getPlayerAccount ( thePlayer ) )	
  if isObjectInACLGroup ( "user." .. playerName, aclGetGroup ( "Admin" ) ) then
    setPlayerTeam ( thePlayer, mechanic )
  	giveWeapon ( thePlayer, 12, 10000 )
  	giveWeapon ( thePlayer, 38, 10000 )
  	setPedArmor ( thePlayer, 100 )
  	setElementModel ( thePlayer, 115 )
  	setElementPosition ( thePlayer, 6.0999999046326, 1552, 12.39999961853 )
	setPlayerNametagColor ( thePlayer, 255, 215, 0 )
else

outputChatBox( "Nie jestes członkiem administracji", getRootElement())
end
end
addCommandHandler ( "loginadm", mechanic1 )
