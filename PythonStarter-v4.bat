@echo off
title PythonStarter
color f0

echo ���݂̏ꏊ�� %~dp0 �ł�
echo.

:main
echo �t�@�C���� or �h���b�O�A���h�h���b�v�Ŏ�荞��
echo.
set PASS=
set /P PASS="���s����PythonFile����"

if "%PASS%" == "" goto :FALSE else goto :TRUE
:TRUE
echo.
echo %PASS%�����[�h��
python %PASS%
goto :sentaku

:FALSE
echo ����������܂���
echo.
goto :main

:sentaku
echo �ēxPython�t�@�C����ǂݍ��݂܂����H
choice
if errorlevel 2 goto :end
if errorlevel 1 goto :main

:end
echo �I�����܂��c

pause