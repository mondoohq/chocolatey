$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$version  = '7.14.2'
$url      = "https://releases.mondoo.com/cnquery/${version}/cnquery_${version}_windows_amd64.zip"
$checksum = 'e130ca2ed4112143a171ff0f7c179cd0316c8af99e1a8e384fa1a8bef332c0cd'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url

  checksum64    = $checksum
  checksumType64= 'sha256' #default is checksumType
}

Install-ChocolateyZipPackage @packageArgs 


