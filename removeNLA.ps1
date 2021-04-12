<#This script removes the Network Level Authenticaion on the server#>
#Change the TargetServer name to your desired computer name.

$TargetServer = $env:COMPUTERNAME
(Get-WmiObject -class "Win32_TSGeneralSetting" -Namespace root\cimv2\terminalservices -ComputerName $TargetServer -Filter "TerminalName='RDP-tcp'").SetUserAuthenticationRequired(0)