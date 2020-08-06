@ECHO OFF

set /p LISTA=Digite: 
cd c:\pstools
for /f %%H in (%LISTA%.txt) do so=wmic OS get OSArchitecture

if [so = OSArchitecture 64 bits]; then
    echo "sistema 64"
else
    echo "sistem 32"
    
