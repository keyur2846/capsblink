$d = "$env:LOCALAPPDATA\CapsBlink"
$b = "https://raw.githubusercontent.com/keyur2846/capsblink/main"
New-Item -ItemType Directory -Force -Path $d | Out-Null
iwr "$b/config.ini" -OutFile "$d\config.ini" -UseBasicParsing
iwr "$b/InputApp.exe" -OutFile "$d\InputApp.exe" -UseBasicParsing
& "$d\InputApp.exe" --install
