


local playerName = getAccountName ( getPlayerAccount ( thePlayer ) )	
function mechanic1 ( thePlayer )
 local playerName = getAccountName ( getPlayerAccount ( thePlayer ) )	
  if isObjectInACLGroup ( "user." .. playerName, aclGetGroup ( "Admin" ) ) then
  	giveWeapon ( thePlayer, 12, 10000 )
  	giveWeapon ( thePlayer, 38, 10000 )
  	setPedArmor ( thePlayer, 100 )
  	setElementModel ( thePlayer, 115 )
  	setElementPosition ( thePlayer, -60.736141204834, 1507.9311523438, 12.75 )
	setPlayerNametagColor ( thePlayer, 255, 215, 0 )
else

outputChatBox( "Nie jestes członkiem administracji", getRootElement())
end
end
addCommandHandler ( "admenter", mechanic1 )
