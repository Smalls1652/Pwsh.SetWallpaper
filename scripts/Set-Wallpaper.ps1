[CmdletBinding()]
param(
    [Parameter(Position = 0, Mandatory)]
    [string]$ImgPath
)

Add-Type -Language "CSharp" -TypeDefinition @"
{LIBCONTENTS}
"@

$imgPathResolved = (Resolve-Path -Path $ImgPath -ErrorAction "Stop").Path

[Pwsh.SysModifier.Wallpaper]::ChangeWallpaper($imgPathResolved)