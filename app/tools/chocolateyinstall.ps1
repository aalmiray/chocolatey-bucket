$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'app-1.0.0'
$app_bat = Join-Path $app_home 'bin/app.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'app' `
    -Url 'https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip' `
    -Checksum 'ef9ef38dc45b9ee514cd6f765f5645bb01e709517ba4775b9d30e6133d8c9d3f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'app' -Path $app_bat