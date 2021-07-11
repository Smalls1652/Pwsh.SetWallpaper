[CmdletBinding()]
param()

$libPath = Join-Path -Path $PSScriptRoot -ChildPath "Pwsh.SysModifier\ChangeWallpaper.cs"
$scriptFilePath = Join-Path -Path $PSScriptRoot -ChildPath "scripts\Set-Wallpaper.ps1"
$outDirPath = Join-Path -Path $PSScriptRoot -ChildPath "out\"
$outFilePath = Join-Path -Path $outDirPath -ChildPath "Set-Wallpaper.ps1"

$changeWallpaperContents = Get-Content -Path $libPath -Raw
$scriptFileContents = Get-Content -Path $scriptFilePath -Raw

$scriptFileContentsUpdated = $scriptFileContents.Replace("{LIBCONTENTS}", $changeWallpaperContents)

if (Test-Path -Path $outDirPath) {
    Remove-Item -Path $outDirPath -Force -Recurse
}
$null = New-Item -Path $outDirPath -ItemType "Directory"

$scriptFileContentsUpdated | Out-File -FilePath $outFilePath