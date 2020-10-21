# Get langpack.
$LpUrl = "http://download.windowsupdate.com/c/msdownload/update/software/updt/2016/09/"
$LpFile = "lp_9a666295ebc1052c4c5ffbfa18368dfddebcd69a.cab"
$LpTemp = "d:\lp.cab"
Invoke-WebRequest -Uri $LpUrl$lpFile -OutFile $LpTemp

# Install langpack.
Add-WindowsPackage -PackagePath $LpTemp -Online

# Remove langpack installer
# Remove-Item $LpTemp
