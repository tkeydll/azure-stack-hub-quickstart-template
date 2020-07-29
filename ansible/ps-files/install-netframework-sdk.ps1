$ndpUrl = "https://go.microsoft.com/fwlink/?linkid=2088517"
$ndpExe="d:\ndp48-full.exe"
Invoke-WebRequest -Uri $ndpUrl -OutFile $ndpExe
"$ndpExe /q /norestart /LCID 1041"

# Remove-item $ndpExe
