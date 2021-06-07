Set-location c:\
Clear-Host

#Return a list of Hyper-V commands
Get-Command -Module hyper-v | Out-GridView

#Return a list of virtual machines
Get-VM

Get-VM | where {$_.State -eq 'Running'}

Get-VM | where {$_.State -eq 'Off'}

#Start and shut down virtual machines
Start-VM -Name <virtual machine name>

Get-VM | where {$_.State -eq 'Off'} | Start-VM

Get-VM | where {$_.State -eq 'Running'} | Stop-VM

#Create a VM checkpoint
Get-VM -Name <VM Name> | Checkpoint-VM -SnapshotName <name for snapshot>

#Measure
Enable-VMResourceMetering -VMName router01

Measure-VM router01

Measure-VM router01 | fl

Measure-VM router01 | Select-Object -ExpandProperty NetworkMeteredTrafficReport

Reset-VMResourceMetering -VMName router01

Disable-VMResourceMetering -VMName router01