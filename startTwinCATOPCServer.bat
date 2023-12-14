@echo off
if not exist "\Windows\SysWOW64\SOServer.exe" goto NO_SOServer

start C:\HZB\OpcIocShell\bin\opcIocShell.exe  C:\HZB\OpcIocShell\IDControlIOC\st.cmd
goto END

:NO_SOServer
@echo ----------------------------------------------------------------------------------------------
@echo PROBLEM: SOFTING OPC SIMULATOR HAS NOT BEEN INSTALLED OR HAS NOT BEEN SUCESSFULLY REGISTERED!
@echo RUN SETUP WITH ADMINISTRATOR PRIVILIGES AGAIN, PLEASE
@echo AFTER INSTALLATION START ME AGAIN AND ENJOY.
@echo ----------------------------------------------------------------------------------------------

:END

cd ..
pause
@echo on
