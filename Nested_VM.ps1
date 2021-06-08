#Configure Nested Virtualization
Set-VMProcessor -VMName <VMName> -ExposeVirtualizationExtensions $true

#Disable Nested Virtualization
Set-VMProcessor -VMName <VMName> -ExposeVirtualizationExtensions $false

#MAC Address Spoofing
Get-VMNetworkAdapter -VMName <VMName> | Set-VMNetworkAdapter -MacAddressSpoofing On

#Network Address Translation (NAT)
New-VMSwitch -Name VmNAT -SwitchType Internal
New-NetNat –Name LocalNAT –InternalIPInterfaceAddressPrefix “192.168.100.0/24”
Get-NetAdapter "vEthernet (VmNat)" | New-NetIPAddress -IPAddress 192.168.100.1 -AddressFamily IPv4 -PrefixLength 24