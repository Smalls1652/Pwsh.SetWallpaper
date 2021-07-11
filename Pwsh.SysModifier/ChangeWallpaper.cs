using System.Runtime.InteropServices;

namespace Pwsh.SysModifier
{
    public static class Wallpaper
    {
        [DllImport("User32.dll", CharSet = CharSet.Unicode)]
        private static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);

        public static void ChangeWallpaper(string wallpaperPath)
        {
            SystemParametersInfo(0x0014, 0, wallpaperPath, 0x03);
        }
    }
}