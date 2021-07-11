# Set-Wallpaper

Change the wallpaper using PowerShell.

## ⚠ Notes

While a .NET 5 class library project is located in `.\Pwsh.SysModifier`, no actual code is built. It's only for separating out the C# code that will be dynamically compiled on script execution using `Add-Type`. Running `\build.ps1` will merge the main portion of the code into the final script.