[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://www.python.org/ftp/python/3.9.0/python-3.9.0-amd64.exe"
$exe = "python-amd64.exe"
Invoke-WebRequest -Uri $url -OutFile $exe

Start-Process -FilePath "$exe" -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1 Include_test=0" -Wait
