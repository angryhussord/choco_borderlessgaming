$packageName = 'borderlessgaming' 
$installerType = 'exe' 
$url = 'https://github.com/Codeusa/Borderless-Gaming/releases/download/8.2/BorderlessGaming_8.2__setup.exe' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes