$ErrorActionPreference = 'Stop';

$packageName = 'borderlessgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/Codeusa/Borderless-Gaming/releases/download/9.5.4/BorderlessGaming9.5.4_admin_setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'borderlessgaming*'
  checksum      = 'C82AC53501077A2E306846EEB761CA7815C05B782D49BB66CCF5F55A36AECACA'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
