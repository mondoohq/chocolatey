$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$version  = '7.4.0'
$url      = "https://releases.mondoo.com/cnquery/${version}/cnquery_${version}_windows_amd64.zip"
$checksum = '443d48297955738a409431a16d8e9376ec92a4bc124a0119ad8f16d03c56b166'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url

  checksum64    = $checksum
  checksumType64= 'sha256' #default is checksumType
}

Install-ChocolateyZipPackage @packageArgs 


