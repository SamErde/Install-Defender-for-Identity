# WORKING DRAFT - Just don't save your access key here in plain text.

# Install Defender for Identity Sensor (works on Windows Server Core)
$AccessKey = ''
.\"Azure ATP sensor Setup.exe" /quiet NetFrameworkCommandLineArguments="/q" AccessKey=$AccessKey

# Remove ATA after MDI is installed
$ATA = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -like "Microsoft Advanced Threat *"}
$MDI = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Azure Advanced Threat Protection Sensor"}
if ($MDI) {
    $ATA.Uninstall()
 }

# Review notes and give credit: https://dirteam.com/sander/2022/03/23/howto-programmatically-add-a-microsoft-defender-for-identity-action-account-to-active-directory/
