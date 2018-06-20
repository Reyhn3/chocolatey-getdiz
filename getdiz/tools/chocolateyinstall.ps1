$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.outertech.com/getdiz.exe'
$url64      = 'https://download.outertech.com/getdiz.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'GetDiz' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum      = 'A5588E5984982A4FBD4F631D315118E32ED78E9FBC64B3CC38C36467A69C6E95'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = 'A5588E5984982A4FBD4F631D315118E32ED78E9FBC64B3CC38C36467A69C6E95'
  checksumType64= 'sha256' #default is checksumType

  silentArgs   = '/S'           # NSIS
}

Install-ChocolateyPackage @packageArgs
