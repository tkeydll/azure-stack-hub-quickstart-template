[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://classic.yarnpkg.com/latest.msi"
$msi = "yarn.msi"
Invoke-WebRequest -Uri $url -OutFile $msi

msiexec /i $msi /qn
