$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$version  = '7.5.1'
$url      = "https://releases.mondoo.com/cnquery/${version}/cnquery_${version}_windows_amd64.zip"
$checksum = 'd601f5e9d24adfac61462647b94aa79a2554faa955700c07e6ed2fbf123eb501'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url

  checksum64    = $checksum
  checksumType64= 'sha256' #default is checksumType
}

Install-ChocolateyZipPackage @packageArgs 


