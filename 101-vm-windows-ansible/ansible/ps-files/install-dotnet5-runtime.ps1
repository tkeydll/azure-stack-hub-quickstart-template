[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://dot.net/v1/dotnet-install.ps1"
$exec = "dotnet-install.ps1"
Invoke-WebRequest -Uri $url -OutFile $exec

"$exec -Channel 5.0 -SharedRuntime"

