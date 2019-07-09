$ErrorActionPreference = 'Stop';

$packageName = 'borderlessgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/Codeusa/Borderless-Gaming/releases/download/9.5.6/BorderlessGaming9.5.6_admin_setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'borderlessgaming*'
  checksum      = '250D2D883CB9F5A05A60BE5B74191CA357489686A979CF7832FCB4C5F0522EDA'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
