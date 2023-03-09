$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$version  = '8.0.0'
$url      = "https://releases.mondoo.com/cnspec/${version}/cnspec_${version}_windows_amd64.zip"
$checksum = 'aa2005981e6ca6cd612759795c22f360754a2ba0ea29327cd9dfb121e66c237e'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url

  checksum64    = $checksum
  checksumType64= 'sha256' #default is checksumType
}

Install-ChocolateyZipPackage @packageArgs 


