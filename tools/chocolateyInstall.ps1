$ErrorActionPreference = 'Stop';

$packageName = 'borderlessgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/Codeusa/Borderless-Gaming/releases/download/9.1/BorderlessGaming_9.1__setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'borderlessgaming*'
  checksum      = 'EDDBB4BCEF68647B77B3E64A31A889DDE6F0964654803D924E1A9D3527CEFB89'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
