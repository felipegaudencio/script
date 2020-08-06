@echo off
mkdir c:\tmp
cls

:VOLTA
echo          ...........................................................
echo          :    SCRIPT DE IDISTRIBUICAO FTP   - 	AMC     :
echo          :=========================================================:
echo          :          INSTALACAO ISOLATIM         :
echo          :                                                         :
echo          :     Por favor, nao interrompa estes procedimentos.      :
echo          :.........................................................:
echo.

echo.
echo ENTRE COM OS DADOS:
echo.

set /p porta=DIGITE O IP DA IMPRESSORA:

echo.

ftp %porta%
bin

pause

