--[[
brama
@author ente91 <druch5@tlen.pl>
@license GPLv2
]]--



bramab = createObject ( 980, -60.9, 1499, 14.6, 0, 0, 316 )

function bramac (thePlayer) 
if isObjectInACLGroup ( "user."..getAccountName(getPlayerAccount(thePlayer)), aclGetGroup("Admin")) then 
moveObject ( bramab, 2000, -60.9, 1499, 14.6 ) 
outputChatBox("Trwa Zamykanie Bramy do bazy Admina.",thePlayer,255,0,255,true) 
else

outputChatBox( "Nie jestes członkiem administracji", getRootElement())
end 
end 
addCommandHandler("admc",bramac) 

function bramao (thePlayer) 
if isObjectInACLGroup ( "user."..getAccountName(getPlayerAccount(thePlayer)), aclGetGroup("Admin")) then 
moveObject ( bramab, 2000, -60.9, 1499, 4.1 ) 
outputChatBox("Trwa Otwieranie Bramy do bazy Admina.", thePlayer,255,0,255,true) 
else

outputChatBox( "Nie jestes członkiem administracji", getRootElement())
end 
end 
addCommandHandler("admo",bramao)
