$ErrorActionPreference = 'Stop';

$packageName = 'borderlessgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/Codeusa/Borderless-Gaming/releases/download/9.4.9/BorderlessGaming9.4.9_admin_setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'borderlessgaming*'
  checksum      = 'F5918704CAA97AF1B6EBA32C9BF00A1D4BCA5062756BA6D4F56A5DBC1013DCD3'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
