@echo off
title PythonStarter
color f0

echo 現在の場所は %~dp0 です
echo.

:main
echo ファイル名 or ドラッグアンドドロップで取り込み
echo.
set PASS=
set /P PASS="実行するPythonFile名→"

if "%PASS%" == "" goto :TRUE else goto :FALSE

:TRUE
echo 文字がありません
echo.
goto :main

:FALSE
echo.
echo %PASS%をロード中
python %PASS%
goto :sentaku

:sentaku
echo 再度Pythonファイルを読み込みますか？
choice
if errorlevel 2 goto :end
if errorlevel 1 goto :main

:end
echo 終了します…

pause