Enable-PSRemoting -Force
# Set-Item WSMan:\localhost\Client\TrustedHosts -Value "localhost" -Force
# winrm set winrm/config/client '@{TrustedHosts="localhost"}'
./tutorial/HelloWorld.ps1