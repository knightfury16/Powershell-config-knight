# .........................Delete Start point.....................#
# Delete here and forth  if you are having problem with unicode encoding in powershell and decided not to use terminal

# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Import terminal icon module
Import-Module -Name Terminal-Icons

# Import z- directory jumper
Import-Module -Name z

# PSReadLine
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord "Ctrl+f" -Function ForwardWord
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

#Importing oh-my-posh custom theme
oh-my-posh --init --shell pwsh --config '~\Desktop\knight.omp.json' | Invoke-Expression

# ..........................Delete Endpoint........................#


#My aliases

New-Alias -Name gh -Value Get-Help

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
