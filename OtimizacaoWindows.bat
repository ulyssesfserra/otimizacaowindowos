@echo off
cls
title Script de Otimizacao Windows - Sinergitech

:: 1. Limpeza de Arquivos Temporários
echo [1/5] Limpando arquivos temporarios...
del /s /f /q %temp%\*.*
rd /s /q %temp%
mkdir %temp%
del /s /f /q C:\Windows\Temp\*.*
rd /s /q C:\Windows\Temp
mkdir C:\Windows\Temp
echo Limpeza concluida!
echo.

:: 2. Limpeza de Prefetch
echo [2/5] Limpando Prefetch...
del /s /f /q C:\Windows\Prefetch\*.*
echo Prefetch limpo!
echo.

:: 3. Verificação de Integridade do Sistema
echo [3/5] Verificando arquivos de sistema (SFC)...
echo Isso pode demorar alguns minutos.
sfc /scannow
echo.

:: 4. Reparo de Imagem do Windows
echo [4/5] Reparando a imagem do Windows (DISM)...
dism /online /cleanup-image /restorehealth
echo.

:: 5. Limpeza de DNS
echo [5/5] Limpando Cache de DNS...
ipconfig /flushdns
echo.

echo OTIMIZACAO CONCLUIDA COM SUCESSO!
echo .
echo Recomenda-se reiniciar o computador.
echo .
echo DESENVOLVIDO DE POR SINERGETECH - https://sinergitech.com.br
pause