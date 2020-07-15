@echo off
title Windows 10 activator by malcolm&
cls&
echo ===================== Windows 10 activator written by MalcolmOnix&
echo ===================== Deleting old Product Key====&
slmgr.vbs /upk&
echo ===================== Uploading New Product====&
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43&
echo =====================Changing Activation Server to zh.us.to&
slmgr /skms zh.us.to&
echo ===================== Activating Windows...&
slmgr /ato
echo ===================== Done,You're' welcome AMIGO...&

   call :MsgBox "Would you like to go to buy me a coffee?"  "VBYesNo+VBQuestion" "Click yes to go to URL"
    if errorlevel 7 (
        echo NO - don't go to the url
    ) else if errorlevel 6 (
        echo YES - go to the url
        start "" "https://www.buymeacoffee.com/malcolmonix"
        Timeout /t 3
    )

    exit /b

:MsgBox prompt type title
    setlocal enableextensions
    set "tempFile=%temp%\%~nx0.%random%%random%%random%vbs.tmp"
    >"%tempFile%" echo(WScript.Quit msgBox("%~1",%~2,"%~3") & cscript //nologo //e:vbscript "%tempFile%"
    set "exitCode=%errorlevel%" & del "%tempFile%" >nul 2>nul
    endlocal & exit /b %exitCode%



pause >nul