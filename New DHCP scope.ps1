$ScopeName = "Scope01"
$HostMin = "172.16.40.12"
$HostsMax = "172.16.40.62"
$SubnetMask = "255.255.255.192"
$LeaseDuration = "0.00:30:00"

Add-DhcpServerv4Scope -Name $ScopeName -StartRange $HostMin -EndRange $HostsMax -SubnetMask $SubnetMask -LeaseDuration $LeaseDuration