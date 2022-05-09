# Mostly a placeholder for now, but this needs to be set on virtualized domain controllers for MDI
# This will result in a brief loss of connectivity if/when the change is made

Get-NetAdapterAdvancedProperty | Where-Object DisplayName -Match "^Large*"
Disable-NetAdapterLso -Name Ethernet0

Get-NetAdapterAdvancedProperty | Where-Object DisplayName -Match "^Large*
