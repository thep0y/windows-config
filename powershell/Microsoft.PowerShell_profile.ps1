# 导入 oh-my-posh
Import-Module oh-my-posh

# 设置主题
oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/powerlevel10k_rainbow.omp.json | Invoke-Expression

Set-PSReadLineOption -PredictionSource History # 设置预测文本来源为历史记录
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete  # Tap 用菜单选择要补全的命令

Set-Alias subl 'C:\Program Files\Sublime Text\subl.exe'

function export($name, $value)
{
    [System.Environment]::SetEnvironmentVariable($name, $value)  
}

function proxy()
{
    Set-Item -Path Env:all_proxy -Value socks5://127.0.0.1:1086
    echo '已开启代理'
}
function unproxy()
{
    Remove-Item -Path Env:all_proxy
    echo '已关闭代理'
}