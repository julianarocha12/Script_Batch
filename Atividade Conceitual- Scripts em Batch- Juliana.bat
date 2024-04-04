@echo off

color 0a

:MenuPrincipal
cls
echo.
====================================================

echo 		MENU PRINCIPAL
echo
====================================================
echo [P]ACOTE OFFICE
echo [S]ERVICOS DE REDE
echo [A]PLICATIVOS WINDOWS
echo [E]NCERRAR SESSAO
echo [F]INALIZAR PROGRAMA
echo
====================================================
echo.
set /p op=Digite a opcao desejada:

if %op% == P (goto :MenuOffice)
if %op% == S (goto :MenuRede)
if %op% == A (goto :MenuAplicativos)
if /i %op% == E (call tela2.bat)
if %op% == F (goto :sair) else (
   echo.
   echo --------------------------------
   echo 	OPCAO INVALIDA!
   echo --------------------------------
   pause > nul
   goto Inicio)

:MenuOffice
set Opcao=
cls
echo.
echo  -------------------------------
echo      PACOTE MICROSOFT OFFICE
echo  -------------------------------
echo.
echo  [W]ORD
echo  [E]XCEL
echo  [A]CCESS
echo  [P]OWER POINT
echo  [R]ETORNAR AO MENU PRINCIPAL
echo.
set /p op=Digite a opcao desejada: "

IF /i "%Op%"=="W" (goto :word)
IF /i "%Op%"=="E" (goto :excel)
IF /i "%Op%"=="A" (goto :access)
IF /i "%Op%"=="P" (goto :powerpoint)
if /I "%Op%"=="R" (goto :MenuPrincipal)

:word
start Winword.exe
goto inicio

:excel
start Excel.exe
goto inicio

:access
start Msaccess.exe
goto inicio

:power point
start Powerpoint.EXE
goto inicio

:MenuPrincipal
goto :MenuPrincipal

:MenuRede
cls
echo.
echo  -----------------------------------
echo          SERVICOS DE REDE
echo  -----------------------------------
echo.
echo  [N]AVEGAR INTERNET
echo  [T]ESTAR CONEXAO DE REDE
echo  [O]BTER O IP DA MAQUINA
echo  [R]ETORNAR AO MENU PRINCIPAL
echo.
set /p "Escolha uma opcao: "

IF /i "%Op%"=="N" (goto :navegarinternet)
IF /i "%Op%"=="T" (goto :testarconexao)
IF /i "%Op%"=="O" (goto :obterIP)
If /i "%Op%"=="R" (goto :Menuprincipal)

:navegarinternet
echo.
set /p site=Digite o endereco da pagina
web:
start %site%
goto inicio

:testarconexao
start notepad.exe
goto inicio

:obterIP
start notepad.exe
goto inicio

:Menuprincipal
goto :MenuPrincipal


:MenuAplicativos
cls
echo.
echo  ----------------------------------
echo        APLICATIVOS DO Windows
echo  ----------------------------------
echo.
echo  [C]ALCULADORA
echo  [T]ECLADO VIRTUAL
echo  [W]INDOWS EXPLORER
echo  [P]AINT
echo  [B]LOCO DE NOTAS
echo  [R]ETORNAR AO MENU PRINCIPAL
echo.
set /p "Escolha uma opcao: "

IF /i "%Op%"=="C" (goto :calculadora)
IF /i "%Op%"=="T" (goto :teclado)
IF /i "%Op%"=="W" (goto :explorer)
IF /i "%Op%"=="P" (goto :paint)
IF /i "%Op%"=="B" (goto :bloco de notas)
if /I "%Op%"=="R" (goto :Menuprincipal)

:calculadora
start calc.exe
goto inicio

:teclado
start osk.exe
goto inicio

:explorer
start explorer.exe
goto inicio

:paint
start mspaint.exe
goto inicio

:bloco de notas
start notepad.exe
goto inicio

:Menuprincipal
goto :MenuPrincipal
