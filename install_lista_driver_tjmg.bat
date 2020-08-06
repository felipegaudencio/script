@ECHO OFF

set /p LISTA=Digite: 
cd c:\pstools





for /f %%H in (%LISTA%.txt) do @xcopy "%logonserver%\netlogon\Programas\kitkyocera" "\\%%H\C$\kitkyocera" /q /h /c /y /i /s

for /f %%H in (%LISTA%.txt) do @xcopy "\\%%H\c$\kitkyocera\DOC\ATALHO\*.*" "\\%%H\c$\Users\Public\Desktop" /q /h /c /y /i /s
for /f %%H in (%LISTA%.txt) do @xcopy "\\%%H\c$\kitkyocera\DOC\ATALHO\*.*" "\\%%H\C$\Documents and Settings\All Users\Desktop" /q /h /c /y /i /s /D

::start "" xcopy "\\%ip%\c$\kitkyocera\DOC\ATALHO\*.*" "\\%ip%\c$\Users\Public\Desktop" /q /h /c /y /i /s /D
::start "" xcopy "\\%ip%\c$\kitkyocera\DOC\ATALHO\*.*" "\\%ip%\c$\Documents and Settings\All Users\Desktop" /q /h /c /y /i /s /D

psexec.exe @%LISTA%.txt -u TJMG\suporteti -p sup0rte_t1 -s msiexec -i "C:\kitkyocera\PadraoTJMGx64.msi" /quiet /norestart