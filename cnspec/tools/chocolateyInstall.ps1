$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$version  = '7.14.2'
$url      = "https://releases.mondoo.com/cnspec/${version}/cnspec_${version}_windows_amd64.zip"
$checksum = '6eacde6e791baa8b1990c0f81c0e2b878e26d624f7fdd34c1ad3c7f8115bf09b'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url

  checksum64    = $checksum
  checksumType64= 'sha256' #default is checksumType
}

Install-ChocolateyZipPackage @packageArgs 


