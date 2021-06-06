#Check the virtual machine configuration versions
Get-VM * | Format-Table Name, Version

#Upgrade the virtual machine configuration version
Update-VMVersion "WindowsCV8"

#Supported virtual machine configuration versions
Get-VMHostSupportedVersion -Default

#create a virtual machine named "WindowsCV8" with a configuration version 8.0
New-VM -Name "WindowsCV8" -Version 8.0

#Check the virtual machine configuration versions
Get-VM * | Format-Table Name, Version