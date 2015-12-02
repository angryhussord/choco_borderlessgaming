$packageName = 'borderlessgaming' 
$installerType = 'exe' 
$url = 'https://github.com/Codeusa/Borderless-Gaming/releases/download/8.4/BorderlessGaming_8.4__setup.exe' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes