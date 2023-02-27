## 0 准备

自行安装 oh-my-posh。

## 1 应用配置文件

如果是新装系统或此前未对 powershell 进行过任何配置，使用此命令：

```powershell
curl -L https://ghproxy.com/https://github.com/thep0y/windows-config/blob/main/powershell/Microsoft.PowerShell_profile.ps1 -o $profile
```

如果之前有配置过 Powershell 则需要使用下面的命令：

```powershell
curl -L https://ghproxy.com/https://github.com/thep0y/windows-config/blob/main/powershell/Microsoft.PowerShell_profile.ps1 >> $profile
```



