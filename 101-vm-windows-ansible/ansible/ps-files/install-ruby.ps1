[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.7.2-1/rubyinstaller-devkit-2.7.2-1-x64.exe"
$exe = "rubyinstaller.exe"
Invoke-WebRequest -Uri $url -OutFile $exe

Start-Process -FilePath "$exe" -ArgumentList "/verysilent /tasks=modpath /lang=ja" -Wait

# install rails
cmd /c gem install rails
