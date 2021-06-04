Set-location c:\
Clear-Host

#Create an internal switch
New-VMSwitch -SwitchName "SwitchName" -SwitchType Internal

#Find the interface index of the virtual switch you just created
Get-NetAdapter

#Configure the NAT gateway using
New-NetIPAddress -IPAddress 192.168.0.1 -PrefixLength 24 -InterfaceIndex 24

#Configure the NAT network using
New-NetNat -Name MyNATnetwork -InternalIPInterfaceAddressPrefix 192.168.0.0/24



#https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/user-guide/setup-nat-network