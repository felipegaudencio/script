@echo off


cscript prncnfg.vbs -x -p COMARCA+PATRIMONIO  -z Nome_Atual	  ' nome da fila 

cscript prnport.vbs -a -r 10.0.38.98 -h 10.0.38.98 -o lpr -q BHTEXXX -me -i 1 -y public -2e

rundll32 printui.dll,PrintUIEntry /Xs /n EXTR-PJU-01 portname 10.0.38.98 

rundll32 printui.dll,PrintUIEntry /y /n EXTR-PJU-01 

cscript prncnfg.vbs -t -p EXTR-PJU-01 -m amc_teste -l Rio_Preto	





' it into two lines. Some comments might need three or more lines.