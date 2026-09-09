param([string]$Subdir)
New-Item -ItemType Directory -Path native-results -Force | Out-Null
Get-ChildItem "C:\pygobject-local\$Subdir\*.conda", "C:\pygobject-local\$Subdir\sha256.json" -ErrorAction SilentlyContinue | Copy-Item -Destination native-results
