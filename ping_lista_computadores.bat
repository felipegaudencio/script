@echo off

(Set InputFile=c:\Temp\computadores.txt)

title,Pinging list of computers

::datestamp
for /f "tokens=2-4 skip=1 delims=(-./)" %%i in ('echo.^|date') do (
for /f "tokens=1-4 delims=-./ " %%m in ('date /t') do (
(set dow=%%m)&(set %%i=%%n)&(set %%j=%%o)&(set yy=%%p) ) )
For /F "tokens=1,2 delims=:, " %%i in ('TIME /T') Do (Set HHMM=%%i%%j)

(Set OutputFile=c:\Temp\Pinglog %yy%-%mm%-%dd% %HHMM%.txt)

If Exist "%OutputFile%" Del "%OutputFile%"

For /F "eol=;" %%* in ('type "%InputFile%"') do (
>>"%OutputFile%" (echo.&echo.---------------&(
echo.%%*;&(ping -a -n 2 -w 750 %%* | Find "."))
)&echo.done %%*,)


::check
start notepad.exe %OutputFile%

pause