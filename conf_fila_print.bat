@echo off
mkdir c:\tmp
cls

:VOLTA
echo          ...........................................................
echo          :    SCRIPT DE INSTALACAO IMPRESSORA   - 	AMC     :
echo          :=========================================================:
echo          :          INSTALACAO DRIVER E MANUAIS DE SUPORTE         :
echo          :                                                         :
echo          :     Por favor, nao interrompa estes procedimentos.      :
echo          :.........................................................:
echo.

echo VAMOS LOCALIZAR SE O DRIVER FOI INSTALADO . . . . .
echo.

echo O DRIVER DEVE SER INSTALADO
echo.
echo ENTRE COM OS DADOS:
echo.
set /p nome=DIGITE O NOME DA IMPRESSORA:
set /p comarca=A LOCALIDADE:
set /p porta=DIGITE O IP DA IMPRESSORA:
set /p coment=DIGITE O SETOR:
echo.
echo VOCE DIGITOU O PATRIMONIO : %nome%
echo VOCE DIGITOU A COMARCA : %comarca%
echo VOCE DIGITOU IP DA IMPRESSORA: %porta%
echo VOCE DIGITOU SETOR/VARA/SESSAO: %coment%
echo.

echo cd /windows/system32/printing_Admin_Scripts/pt-br > c:\tmp\conf_imp.bat

Echo cscript prncnfg.vbs -x -p COMARCA+PATRIMONIO  -z %nome% >> c:\tmp\conf_imp.bat

Echo cscript prnport.vbs -a -r %porta% -h %porta% -o lpr -me >> c:\tmp\conf_imp.bat

Echo rundll32 printui.dll,PrintUIEntry /Xs /n %nome% portname %porta% >> c:\tmp\conf_imp.bat

Echo rundll32 printui.dll,PrintUIEntry /y /n %nome% >> c:\tmp\conf_imp.bat

Echo rundll32 printui.dll,PrintUIEntry /Xs /n "%nome%" comment "%coment%" >> c:\tmp\conf_imp.bat

Echo rundll32 printui.dll,PrintUIEntry /Xs /n "%nome%" Location "%comarca%" >> c:\tmp\conf_imp.bat

echo exit >> c:\tmp\conf_imp.bat

c:\tmp\conf_imp.bat

goto end 
:end
Del c:\tmp\tst.txt
Del c:\tmp\prn2.txt
exit
