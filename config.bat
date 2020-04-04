@echo off

if not %1=="" goto go
:main
cls
echo DDLC-LOVE-Assets Config
echo Select system to be used
echo 1) 3DS
echo 2) Switch
echo 3) PS Vita
echo 4) PSP
echo 5) PS3
set /p opt=#? 
if %opt%==1 set system=3ds
if %opt%==2 set system=switch
if %opt%==3 set system=psvita
if %opt%==4 set system=psp
if %opt%==5 set system=ps3
if %opt%=="" goto main

:go
rd assets /s/q
md assets

echo System: %system%
echo Copying files...
if %system%==3ds (
  xcopy 3ds\common\audio assets\audio /e/i/q/y
  xcopy 3ds\old-png\fonts assets\fonts /e/i/q/y
  xcopy 3ds\old-png\images assets\images /e/i/q/y
) else if %system%==3dst3x (
  xcopy 3ds\common\audio assets\audio /e/i/q/y
  xcopy 3ds\new-t3x\fonts assets\fonts /e/i/q/y
  xcopy 3ds\new-t3x\images assets\images /e/i/q/y
) else if %system%==switch (
  xcopy ddlclove\common\audio assets\audio /e/i/q/y
  xcopy ddlclove\common\fonts assets\fonts /e/i/q/y
  xcopy ddlclove\switch\images assets\images /e/i/q/y
) else if %system%==psvita (
  xcopy ddlclove\common\audio assets\audio /e/i/q/y
  xcopy ddlclove\psvita\audio assets\audio /e/i/q/y
  xcopy ddlclove\common\fonts assets\fonts /e/i/q/y
  xcopy ddlclove\psvita\images assets\images /e/i/q/y
) else if %system%==psp (
  xcopy ddlclove\common\audio assets\audio /e/i/q/y
  xcopy ddlclove\psp\audio assets\audio /e/i/q/y
  xcopy ddlclove\psp\images assets\images /e/i/q/y
) else if %system%==ps3 (
  xcopy ddlclove\ps3\audio assets\audio /e/i/q/y
  xcopy ddlclove\ps3\images assets\images /e/i/q/y
)
echo Done!
pause
