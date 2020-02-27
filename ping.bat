@echo off
(for /f "usebackq delims=" %%a in ("D:\ip.txt") do (
    set /p"=%%a-->"
    for /f "tokens=4 delims==(" %%i in ('ping -n 20 %%a^|findstr /i "丢失 平均 lost average"') do set /p"=%%i "
    echo;
))<nul
pause
