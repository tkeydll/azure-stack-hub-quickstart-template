[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://golang.org/dl/go1.15.6.windows-amd64.msi"
$msi = "go-amd64.msi"
Invoke-WebRequest -Uri $url -OutFile $msi

msiexec /i $msi /qn
