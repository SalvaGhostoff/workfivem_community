:menu
@echo off & color 0f & cls & title start.bat par dop
mode 60,20
color 09
echo.
echo [1] Lancer Serveur [2] Supprimer cache  
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
goto :menu
exit

:1
color 09
echo.
echo Lancement du serveur en cours...
ping localhost -n 2 >nul
echo.
cd /d C:\Users\mouta\Desktop\workfivem_community
C:\Users\mouta\Desktop\workfivem_community\artifacts\FXServer.exe +exec server.cfg
rem Changez les 2 chemins d'accès ci-dessus
pause
exit

:2
color 09
echo.
echo Suppression du cache en cours...
RMDIR /s /q "C:\Users\mouta\Desktop\workfivem_community\cache"
rem Changez le chemin d'accès ci-dessus
echo.
ping localhost -n 2 >nul
echo Dossier cache supprime !
echo.
echo Pour fermer cette fenetre merci d'appuyer sur une touche.
pause
exit
