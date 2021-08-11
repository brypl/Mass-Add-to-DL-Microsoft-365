$update = gc 'C:\temp\operations.txt' 
$group = Read-Host "Enter the identity of the group you want to add users to"
ForEach ($ADuser in $update) { 
    Add-DistributionGroupMember -Identity $group -member $ADuser  
}