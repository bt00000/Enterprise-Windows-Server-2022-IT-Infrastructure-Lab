# Import the Active Directory module
Import-Module ActiveDirectory

# Loop to create 50 users
for ($i = 1; $i -le 50; $i++) {
    $username = "user$i"
    $password = ConvertTo-SecureString "P@ssword123" -AsPlainText -Force
    New-ADUser -Name "User $i" `
               -GivenName "User$i" `
               -Surname "Lab" `
               -SamAccountName $username `
               -UserPrincipalName "$username@corp.local" `
               -Path "OU=Users,DC=corp,DC=local" `
               -AccountPassword $password `
               -Enabled $true `
               -PasswordNeverExpires $true
}
