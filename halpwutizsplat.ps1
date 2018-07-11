param(
[string]$firstname,
[string]$surname,
[string]$user,
[string]$prepositions
[Parameter(mandatory=$true)]
[string]$newusername
[Parameter(mandatory=$true)]
[string]$Displayname = $lastname.Trim() +', ' + ($firstname.Trim() + ' ' + $Prepositions.Trim()).Trim()
)

Function NewUsername ($firstname, $surname, $user, $newusername, $prepositions)
{

Rename-ADObject $user -NewName $newusername
set-adobject $newname -surname $surname.Trim() -displayname $Displayname
}