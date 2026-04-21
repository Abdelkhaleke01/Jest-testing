@echo off
setlocal enabledelayedexpansion
for /f %%A in ('powershell -Command "Add-Type -AssemblyName System.Windows.Forms; $screen = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds; $bitmap = New-Object System.Drawing.Bitmap($screen.Width, $screen.Height); $graphics = [System.Drawing.Graphics]::FromImage($bitmap); $graphics.CopyFromScreen($screen.Location, [System.Drawing.Point]::Empty, $screen.Size); $bitmap.Save('bewijs.png'); $graphics.Dispose(); $bitmap.Dispose(); Write-Host 'Done'"') do (
  echo %%A
)
