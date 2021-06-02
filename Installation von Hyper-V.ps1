
#To install Hyper-V on a server
Install-WindowsFeature -Name Hyper-V -IncludeManagementTools -IncludeAllSubFeature -Restart

#After the server restarts, you can see that the Hyper-V role is installed
Get-WindowsFeature -Name Hyper*
