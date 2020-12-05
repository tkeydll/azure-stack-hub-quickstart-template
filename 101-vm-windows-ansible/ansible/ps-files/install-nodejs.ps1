[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://nodejs.org/dist/v14.15.1/node-v14.15.1-x64.msi"
$msi = "node.msi"
Invoke-WebRequest -Uri $url -OutFile $msi

msiexec /i $msi /qn
