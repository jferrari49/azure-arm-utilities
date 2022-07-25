Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Set-Service -Name ssh-agent -StartupType 'Automatic'
Set-Service -Name sshd -StartupType 'Automatic'
Get-Service ssh* | Start-Service
$registryPath = "HKCU:\Software\Sysinternals\PsPing"
$name = "EulaAccepted"
New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value "1" -PropertyType DWORD -Force | Out-Null