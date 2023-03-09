$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$version  = '8.0.0'
$url      = "https://releases.mondoo.com/cnquery/${version}/cnquery_${version}_windows_amd64.zip"
$checksum = '95d16834c27ad4facbc6ab36b3dd7f3b0ac1bceff803e096cad682ee8c908ad0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url

  checksum64    = $checksum
  checksumType64= 'sha256' #default is checksumType
}

Install-ChocolateyZipPackage @packageArgs 


