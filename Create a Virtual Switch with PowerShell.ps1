Set-location c:\
Clear-Host

#Create a Virtual Switch with PowerShell

#Find the interface name
Get-NetAdapter

#Create a variable
$net = Get-NetAdapter -Name 'Management'

#Create the switch
New-VMSwitch -Name "External VM Switch" -AllowManagementOS $True -NetAdapterName $net.Name