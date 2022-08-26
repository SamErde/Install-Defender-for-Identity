# WORKING DRAFT - Don't save your access key here in plain text.

# Install Defender for Identity Sensor (works on Windows Server Core)
$AccessKey = ''
.\"Azure ATP sensor Setup.exe" /quiet NetFrameworkCommandLineArguments="/q" AccessKey=$AccessKey

<# Review notes and script the creation of gMSAs and/or service accounts, and give credit: 
  https://dirteam.com/sander/2022/03/23/howto-programmatically-add-a-microsoft-defender-for-identity-action-account-to-active-directory/
#>
