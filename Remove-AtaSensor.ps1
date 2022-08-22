# Remove Advanced Threat Analytics (ATA) after Microsoft Defender for Identity (MDI) is installed.
$ATA = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -like "Microsoft Advanced Threat *"}
$MDI = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Azure Advanced Threat Protection Sensor"}

if ($MDI) {
  Write-Output "Installation found:
  $ATA
  $ATA.Uninstall()
 }
