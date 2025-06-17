@echo off
setlocal enabledelayedexpansion

:: Prompt version
set /p VERSION=Enter version: 
set "BASENAME=DaBsu v%VERSION%"
set "ZIP1_NAME=DaBsu v%VERSION%.zip"
set "ZIP2_NAME=DaBsu_With_Quick_Action v%VERSION%.zip"
set "EXCLUDE_SELF=%~nx0"

:: Define exclude list (space-separated)
set "EXCLUDE=@('.git','.vscode','lang','.gitignore','.gitattributes','%EXCLUDE_SELF%','%ZIP1_NAME%','%ZIP2_NAME%')"

:: Function to create a zip
echo Creating ZIP: %~1
powershell -NoLogo -NoProfile -Command ^
  "$ErrorActionPreference = 'Stop';" ^
  "$dest = '%cd%\%ZIP1_NAME%';" ^
  "$exclude = %EXCLUDE%;" ^
  "$base = Get-Location;" ^
  "$all = Get-ChildItem -Recurse -File;" ^
  "$filtered = $all | Where-Object { $rel = $_.FullName.Substring($base.Path.Length + 1); $normRel = $rel.Replace('\', '/'); $top = $normRel.Split('/')[0]; ($exclude -notcontains $top) -and ($exclude -notcontains $normRel) };" ^
  "Add-Type -AssemblyName 'System.IO.Compression.FileSystem';" ^
  "$temp = Join-Path $env:TEMP ([guid]::NewGuid()); New-Item -ItemType Directory -Path $temp | Out-Null;" ^
  "foreach ($f in $filtered) { $rel = $f.FullName.Substring($base.Path.Length + 1); $destPath = Join-Path $temp $rel; New-Item -ItemType Directory -Path ([System.IO.Path]::GetDirectoryName($destPath)) -Force | Out-Null; Copy-Item $f.FullName -Destination $destPath; }" ^
  "$zip = [System.IO.Compression.ZipFile]::Open($dest, 'Create');" ^
  "$baseLen = $temp.Length + 1;" ^
  "Get-ChildItem -Recurse $temp | Where-Object { -not $_.PSIsContainer } | ForEach-Object {" ^
  "  $entryName = $_.FullName.Substring($baseLen).Replace('\', '/');" ^
  "  [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $_.FullName, $entryName);" ^
  "};" ^
  "$zip.Dispose();" ^
  "Remove-Item $temp -Recurse -Force"


if errorlevel 1 (
    echo Failed to create %ZIP1_NAME%
    pause
    exit /b
)

:: Rename folder
echo Renaming dialog_disabled → dialog ...
if not exist "data\dabsu\dialog_disabled" (
    echo Folder not found: data\dabsu\dialog_disabled
    pause
    exit /b
)

if exist "data\dabsu\dialog" (
    echo Folder already exists: data\dabsu\dialog
    pause
    exit /b
)

ren "data\dabsu\dialog_disabled" dialog
ren "data\minecraft\tags\dialog_disabled" dialog

:: Create second zip
echo Creating ZIP: %ZIP2_NAME%
powershell -NoLogo -NoProfile -Command ^
  "$ErrorActionPreference = 'Stop';" ^
  "$dest = '%cd%\%ZIP2_NAME%';" ^
  "$exclude = %EXCLUDE%;" ^
  "$base = Get-Location;" ^
  "$all = Get-ChildItem -Recurse -File;" ^
  "$filtered = $all | Where-Object { $rel = $_.FullName.Substring($base.Path.Length + 1); $normRel = $rel.Replace('\', '/'); $top = $normRel.Split('/')[0]; ($exclude -notcontains $top) -and ($exclude -notcontains $normRel) };" ^
  "Add-Type -AssemblyName 'System.IO.Compression.FileSystem';" ^
  "$temp = Join-Path $env:TEMP ([guid]::NewGuid()); New-Item -ItemType Directory -Path $temp | Out-Null;" ^
  "$filtered | ForEach-Object { $rel = $_.FullName.Substring($base.Path.Length + 1); $destPath = Join-Path $temp $rel; New-Item -ItemType Directory -Path ([System.IO.Path]::GetDirectoryName($destPath)) -Force | Out-Null; Copy-Item $_.FullName -Destination $destPath };" ^
  "$zip = [System.IO.Compression.ZipFile]::Open($dest, 'Create');" ^
  "$baseLen = $temp.Length + 1;" ^
  "Get-ChildItem -Recurse -File $temp | ForEach-Object {" ^
  "  $entryName = $_.FullName.Substring($baseLen).Replace('\', '/');" ^
  "  [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $_.FullName, $entryName);" ^
  "};" ^
  "$zip.Dispose();" ^
  "Remove-Item $temp -Recurse -Force"




if errorlevel 1 (
    echo Failed to create %ZIP2_NAME%
    timeout /t 2 >nul
    if exist "data\dabsu\dialog" (
        ren "data\dabsu\dialog" dialog_disabled
        if exist "data\dabsu\dialog_disabled" (
            echo Restored: dialog → dialog_disabled
        ) else (
            echo Failed to rename back to dialog_disabled
        )
) else (
    echo 'dialog' folder not found — cannot rename back
)

    pause
    exit /b
)

ren "data\dabsu\dialog" dialog_disabled
ren "data\minecraft\tags\dialog" dialog_disabled


:: All done
echo.
echo Success!
echo Created: %ZIP1_NAME%
echo Created: %ZIP2_NAME%
pause
exit /b
