$ErrorActionPreference = 'Stop';

$packageName = 'borderlessgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/Codeusa/Borderless-Gaming/releases/download/9.5.5/BorderlessGaming9.5.5_admin_setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'borderlessgaming*'
  checksum      = 'EC435FCB49345803BE505A237FD81F07177B0B7F9066F699BFE8D124D8C2EFD3'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
