@echo off
title ClementineOS Startup
cls
color 0c

goto check_Permissions 

:check_Permissions
    @echo Administrative permissions required. Detecting permissions...
    
    @net session >nul 2>&1
    if %errorLevel% == 0 (
        @echo Success: Administrative permissions confirmed.
	  goto install
    ) else (
        @echo Failure: Current permissions inadequate.
        
    )
    
    @pause
    @echo Sorry but the computer is offline. Try to reboot.
    goto close
    
:close
@pause
@echo Sorry but the computer is offline. Try to reboot.
goto close

:install
start Installer.bat

stop
exit