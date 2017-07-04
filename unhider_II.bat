@echo off
REM ###############################################################
REM #Author: KRYPTONX / EagleKrypter for smashing.                #
REM #   allow to unhide all data hidden by virus or script file   #
REM #just give drive letter and type Return / Enter to run process#
REM ###############################################################

echo ###############################################################
echo #                    UNHIDER II BY KRYPTONX                   #
echo #             Version 0.1.1 beta All rights reserved          #
echo ###############################################################
REM make a newline
echo.
echo selectionnez une lettre logique
echo lettre de votre lecteur [D:] par exemple sans les deux points (:)
echo select a logical letter 
echo drive letter e.g. [D:] without columns (:)
set /p lecteur="Lecteur / Drive : "
echo %lecteur%:
pause>null
echo "please wait ..."
attrib /D /S -H -A -S %lecteur%:\*.*
dir /s *.2
dir /s *.* > C:\log.txt
echo "consultez le fichier log.txt c'est TRES IMPORTANT !!!!!!!!!!"
echo "read log.txt file, it's very IMPORTANT !!!!!!!!!!"
pause>nul
cmd /k "cd %lecteur%: && dir /s *.*"
pause>nul
del /S *.2
echo "OK all is good !"
echo "i'm fixing ..."
attrib /S /D +H "System Volume Information"
echo "YEAH FINISHED !"
echo.
pause
exit