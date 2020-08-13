:: Install choco .exe and add choco to PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install all the packages
:::: Browsers
choco install googlechrome -fy

:::: Text editors / IDEs
choco install vscode -fy
choco install notepadplusplus -fy

:::: Dev tools
choco install git -fy
choco install cmder -fy
choco install docker-desktop -fy
choco install openjdk8jre -fy
choco install winscp.install -fy
choco install putty -fy
choco install microsoftazurestorageexplorer -fy
choco install anaconda3 -fy

:::: Media
choco install vlc -fy

:::: Utilities + others
choco install winrar -fy
choco install microsoft-teams.install -fy
choco install zoom -fy
choco install google-drive-file-stream -fy
choco install simplenote -fy
choco install office365business -fy
