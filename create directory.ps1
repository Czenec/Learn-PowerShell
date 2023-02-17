# ---Hjemmeområder---
New-Item -ItemType Directory -Path "C:\Fram IT\hjemmeområder"

$NewAcl = Get-Acl -Path "C:\Fram IT\hjemmeområder"
$isProtected = $true
$preserveInheritance = $true
$NewAcl.SetAccessRuleProtection($isProtected, $preserveInheritance)
Set-Acl -Path "C:\Fram IT\hjemmeområder" -AclObject $NewAcl


# ---Fellesområder---
New-Item -ItemType Directory -Path "C:\Fram IT\fellesområder"


# Give full access
$Acl = Get-Acl "C:\Data"
$Ar = New-Object System.Security.AccessControl.FileSystemAccessRule("Cain Roth","FullControl","Allow")
$Acl.SetAccessRule($Ar)
Set-Acl "C:\test\dir" $Acl