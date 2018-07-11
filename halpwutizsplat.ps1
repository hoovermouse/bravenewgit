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
    <#Het moet het volgende kunnen doen
    get-aduser BEBA00 | Rename-ADObject -NewName "be ba"
set-aduser BEBA00 -surname ba -displayname "ba, be" -UserPrincipalName b.ba@domain.com -EmailAddress b.ba@domain.com

#in exchange shell 
Set-Mailbox b.ba -PrimarySmtpAddress b.ba@domain.com -EmailAddressPolicyEnabled $false 
#>

Rename-ADObject $user -NewName $newusername
set-adobject $newname -surname $surname.Trim() -displayname $Displayname
}