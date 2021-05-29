#Installation von Hyper-V

#To install Hyper-V on a server you're connected to remotely
Install-WindowsFeature -Name Hyper-V -ComputerName m4700 -IncludeManagementTools -Restart

#After the server restarts, you can see that the Hyper-V role is installed
Get-WindowsFeature -ComputerName m4700