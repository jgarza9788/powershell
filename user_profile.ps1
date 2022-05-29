#https://github.com/craftzdog/dotfiles-public/blob/master/.config/powershell/user_profile.ps1

#mh-my-posh theme
# $theme_config = Join-Path $env:USERPROFILE ".\AppData\Local\Programs\oh-my-posh\themes\darkblood.omp.json"
$theme_config = Join-Path $env:USERPROFILE ".config\powershell\custom.omp.json"
echo $theme_config
oh-my-posh --init --shell pwsh --config $theme_config | Invoke-Expression
# oh-my-posh init pwsh --config ~/.cert.omp.json | Invoke-Expression

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias run start
Set-Alias open start
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'


# conda + powershell
# powershell -ExecutionPolicy ByPass -NoExit -Command "& 'C:\Users\JGarza\miniconda3\shell\condabin\conda-hook.ps1' ; conda activate 'C:\Users\JGarza\miniconda3\'"
conda init powershell -q

#  cd to folder
cd .\github\

# clear before showing
clear


