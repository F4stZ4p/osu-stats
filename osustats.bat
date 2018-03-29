@echo off
title osu! stats by F4stZ4p $ Powered by lemmmy.pw
color 0D
mode con cols=50 lines=15
:event_main
cls
echo --------osu! stats generator by F4stZ4p--------
echo --------Powered by lemmmy.pw website-----------
pause >nul

:event_osu.classic
cls
set /p osu="Player's nickname: "
set /p hex="Background color (ex. FFFFFF): "
set /p rounding="Avatar rounding (number): "
echo Visible = 1 > StatsEngine.vbs
echo Set objExplorer = WScript.CreateObject _ >> StatsEngine.vbs
echo ("InternetExplorer.Application", "IE_") >> StatsEngine.vbs
echo objExplorer.Navigate "http://lemmmy.pw/osusig/sig.php?colour=hex%hex%&uname=%osu%&pp=2&countryrank&removeavmargin&flagshadow&flagstroke&darktriangles&opaqueavatar&avatarrounding=%rounding%&onlineindicator=undefined&xpbar&xpbarhex" >> StatsEngine.vbs
echo objExplorer.Visible = 1 >> StatsEngine.vbs
echo objExplorer.Resizable = False >> StatsEngine.vbs
echo objExplorer.Menubar = False >> StatsEngine.vbs
echo objExplorer.Toolbar = False >> StatsEngine.vbs
echo objExplorer.Width = 370 >> StatsEngine.vbs
echo objExplorer.Height = 170 >> StatsEngine.vbs
echo objExplorer.Addressbar = False >> StatsEngine.vbs
echo objExplorer.Top = 0 >> StatsEngine.vbs
echo objExplorer.Left = 0 >> StatsEngine.vbs
echo Sub IE_onQuit() >> StatsEngine.vbs
echo Wscript.Quit >> StatsEngine.vbs
echo End Sub >> StatsEngine.vbs
start /min StatsEngine.vbs
goto :event_main