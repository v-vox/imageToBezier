:start
cls
@echo off
echo "-----------------------------"
echo "| image to bezier conv v1.7 |"
echo "-----------------------------"
echo.
echo           by vox 
echo.
echo Enter Image Name (INCLUDE FILE EXTENSION, press RETURN to exit):

set /p x= 
if '%x%'=='' goto end
IF EXIST %x% ( goto next
) ELSE (
cls
echo "-----------------------------"
echo "| image to bezier conv v1.7 |"
echo "-----------------------------"
echo.
echo           by vox 
echo.
echo ERROR: Cannot Find Image
pause
goto start
)
:next
cls
echo "-----------------------------"
echo "| image to bezier conv v1.7 |"
echo "-----------------------------"
echo.
echo           by vox 
echo.
echo High(default) or Low detail (1 for high, 2 for low, 3 to go back):
set /p y= 
if '%y%'=='' set y=1
cd res
if '%y%'=='1' echo %~dp0\%x% | cannyedge.exe
if '%y%'=='2' echo %~dp0\%x% | cannyedge2.exe
if '%y%'=='3' goto start

potrace.exe %~dp0\%x%.bmp --flat --svg
del %~dp0\%x%output.txt
echo %~dp0\%x%.svg |beziercpp.exe >> %~dp0\%x%Output.txt
del %~dp0\%x%.bmp
del %~dp0\%x%.svg
cls
goto start

:end
exit