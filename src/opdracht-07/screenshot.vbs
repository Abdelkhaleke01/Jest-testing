Set objScreen = CreateObject("WScript.Shell").GetSpecialFolder(0)
Set objFSO = CreateObject("Scripting.FileSystemObject")
strDesktop = objFSO.GetSpecialFolder(0)

' Create the screenshot using a different method
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "powershell -NoProfile -Command ""[void][Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms');[void][Reflection.Assembly]::LoadWithPartialName('System.Drawing');$screen=[System.Windows.Forms.Screen]::PrimaryScreen.Bounds;$bitmap=New-Object System.Drawing.Bitmap($screen.Width,$screen.Height);$graphics=[System.Drawing.Graphics]::FromImage($bitmap);$graphics.CopyFromScreen($screen.Location,[System.Drawing.Point]::Empty,$screen.Size);$bitmap.Save('bewijs.png');$graphics.Dispose();$bitmap.Dispose()""", 0, True
