$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'app-1.0.0'
$app_bat = Join-Path $app_home 'bin/app.cmd'

Uninstall-BinFile -Name 'app' -Path $app_bat