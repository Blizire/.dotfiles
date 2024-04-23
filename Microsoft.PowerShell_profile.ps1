C:\Users\stile\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe init pwsh | Invoke-Expression

# theme
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/half-life.omp.json" | Invoke-Expression

function gsudo {
    Start-Process wt -Verb runAs
}

function touch {
    param(
        [string] $filename
    )

    New-Item $filename -type file
}

function km {
    $komorebi = get-process -erroraction "silentlycontinue" "komorebi"
    if ($komorebi -eq $null){
        komorebic start --whkd
    } else {
        kill -name "komorebi"
        kill -name "whkd"
    }
}

Set-Alias -Name vim -Value nvim

# paths
$Env:VCPKG_ROOT="C:\Users\stile\work\tools\vcpkg"
$Env:KOMOREBI_CONFIG_HOME = $HOME + '\.config\komorebi'
$Env:Path += ";C:\Users\stile\work\tools\grep-2.5.4-bin\bin"
$Env:Path += ";C:\Users\stile\work\tools\x64dbg\release"
$vimrc = $home + "\AppData\Local\nvim\init.lua"
$vimhome = $home + "\AppData\Local\nvim"

cd ~/work

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
