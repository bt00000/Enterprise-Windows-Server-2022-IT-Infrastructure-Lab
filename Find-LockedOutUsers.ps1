# Import the Active Directory module
Import-Module ActiveDirectory

# Search and list locked-out accounts
Search-ADAccount -LockedOut | Select-Object Name, SamAccountName, LockedOut
