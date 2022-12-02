$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$version  = '7.6.1'
$url      = "https://releases.mondoo.com/cnspec/${version}/cnspec_${version}_windows_amd64.zip"
$checksum = '85b46c36fc4b9a2969dfeeda5ca33f386e703b044eb2e5c268a02c776a31be56'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url

  checksum64    = $checksum
  checksumType64= 'sha256' #default is checksumType
}

Install-ChocolateyZipPackage @packageArgs 


