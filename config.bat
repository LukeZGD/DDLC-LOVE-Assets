@echo off

cls
echo DDLC-LOVE-assets config
echo Select system to be used
echo 1) 3DS (old-png)
echo 2) 3DS (new-t3x)
echo 3) Switch
echo 4) PS Vita
echo 5) PSP
echo 6) PS3
set /p opt=#? 
if %opt% equ 1 set system=3dspng
if %opt% equ 2 set system=3dst3x
if %opt% equ 3 set system=switch
if %opt% equ 4 set system=psvita
if %opt% equ 5 set system=psp
if %opt% equ 6 set system=ps3

rd output /s /q
md output\assets

echo Copying files...
if %system%==3dspng (
  xcopy 3ds\common\audio output\assets\audio /e /i /q /y
  xcopy 3ds\old-png\fonts output\assets\fonts /e /i /q /y
  xcopy 3ds\old-png\images output\assets\images /e /i /q /y
) else if %system%==3dst3x (
  xcopy 3ds\common\audio output\assets\audio /e /i /q /y
  xcopy 3ds\new-t3x\fonts output\assets\fonts /e /i /q /y
  xcopy 3ds\new-t3x\images output\assets\images /e /i /q /y
) else if %system%==switch (
  xcopy ddlclove\common\audio output\assets\audio /e /i /q /y
  xcopy ddlclove\common\fonts output\assets\fonts /e /i /q /y
  xcopy ddlclove\switch\images output\assets\images /e /i /q /y
) else if %system%==psvita (
  xcopy ddlclove\common\audio output\assets\audio /e /i /q /y
  xcopy ddlclove\psvita\audio output\assets\audio /e /i /q /y
  xcopy ddlclove\common\fonts output\assets\fonts /e /i /q /y
  xcopy ddlclove\psvita\images output\assets\images /e /i /q /y
) else if %system%==psp (
  xcopy ddlclove\common\audio output\assets\audio /e /i /q /y
  xcopy ddlclove\psp\audio output\assets\audio /e /i /q /y
  xcopy ddlclove\common\fonts output\assets\fonts /e /i /q /y
  xcopy ddlclove\psp\images output\assets\images /e /i /q /y
) else if %system%==ps3 (
  xcopy ddlclove\ps3\audio output\assets\audio /e /i /q /y
  xcopy ddlclove\ps3\images output\assets\images /e /i /q /y
)
echo Done!
pause