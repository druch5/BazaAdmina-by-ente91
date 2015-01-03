

local playerName = getAccountName ( getPlayerAccount ( thePlayer ) )	
function mechanic1 ( thePlayer )
 local playerName = getAccountName ( getPlayerAccount ( thePlayer ) )	
  if isObjectInACLGroup ( "user." .. playerName, aclGetGroup ( "Admin" ) ) then
	outputChatBox( "=====================================", getRootElement())
    outputChatBox( "Spis Komend Baza Admina by ente91", getRootElement())
	outputChatBox( "=====================================", getRootElement())
	outputChatBox( "/loginadm - Teleportuje do bazy admina", getRootElement())
	outputChatBox( "/admenter - Teleportuje do biura", getRootElement())
	outputChatBox( "/admexit - Wyjscie z biura", getRootElement())
	outputChatBox( "/admo - Otwieranie bramy", getRootElement())
	outputChatBox( "/admc - Zamykanie bramy", getRootElement())
	outputChatBox( "/admhelp - Spis komend", getRootElement())
	outputChatBox( "=====================================", getRootElement())
else

outputChatBox( "Nie jestes członkiem administracji", getRootElement())
end
end
addCommandHandler ( "admhelp", mechanic1 )
