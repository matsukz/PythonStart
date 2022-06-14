@echo off
title PythonStarter
color f0

echo 現在の場所は %~dp0 です
echo.

:main
echo ファイル名 or ドラッグアンドドロップで取り込み
echo.
set PASS=
rem
set /P PASS="実行するPythonFile名→"
echo.
echo %PASS%をロード中
python %PASS%

echo 再度Pythonファイルを読み込みますか？
choice
if errorlevel 2 goto :end
if errorlevel 1 goto :main

:end
echo 終了します…

pause