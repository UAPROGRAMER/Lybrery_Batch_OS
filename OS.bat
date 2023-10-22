@echo off

set color = 0
set screen = 1
set music = 1
set style = 1

:st

if '%screen%'=='1' goto st1
if '%screen%'=='2' goto st2
color %color%

:st1

cls

< nul set /p str="+------------------+-----------------------------------------------------+------------------"
echo ^+
< nul set /p str="|                  | ##      ##  ####    ####     ####   ####    ##   ## |                  "
echo ^|
< nul set /p str="|                  | ##          ## ##   ## ##   ##  ##  ## ##    ## ##  |                  "
echo ^|
< nul set /p str="|                  | ##      ##  ####    ####    #####   ####      ##    |                  "
echo ^|
< nul set /p str="|                  | ##      ##  ##  ##  ## ##   ##      ## ##     ##    |                  "
echo ^|
< nul set /p str="|                  | ######  ##  #####   ##  ##   ####   ##  ##   ##     |                  "
echo ^|
< nul set /p str="+------------------+-----------------------------------------------------+------------------"
echo ^+
< nul set /p str="|                  |                    * OS system                      |                  "
echo ^|
< nul set /p str="|                  |                  * version - 3.0                    |                  "
echo ^|
< nul set /p str="|                  |                 * standart librery                  |                  "
echo ^|
< nul set /p str="|                  |               * all rights reserved                 |                  "
echo ^|
< nul set /p str="|                  |  * by using "Librery" you agree to the terms of use |                  "
echo ^|
< nul set /p str="+------------------+-----------------------------------------------------+------------------"
echo ^+
< nul set /p str="|                  |               Made in Ukraine by Stas               |                  "
echo ^|
< nul set /p str="+------------------+-----------------------------------------------------+------------------"
echo ^+
< nul set /p str="|                  |            Print "/start" to start system           |                  "
echo ^|
< nul set /p str="+------------------+-----------------------------------------------------+------------------"
echo ^+

goto 1

:st2

cls

echo "###########################################################################################"
echo "##                       ######################################                          ##"
echo "##                       ## ###   #    ##    #    #    #  #  ##                          ##"
echo "##                       ## #### ## ##  # ## # ## # ## ##   ###                          ##"
echo "##                       ## #### ##    ##    #    #    ### ####                          ##"
echo "##                       ## #### ## ##  # # ## #### # #### ####                          ##"
echo "##                       ##   #   #    ## ## #    # ## ### ####                          ##"
echo "##                       ######################################                          ##"
echo "###########################################################################################"
echo "##                                       OS system                                       ##"
echo "##                                     version - 1.0                                     ##"
echo "##                                    standart librery                                   ##"
echo "##                                   all rights reserved                                 ##"
echo "##                      by using "Librery" you agree to the terms of use                 ##"
echo "###########################################################################################"
echo "##                                made in Ukraine by Stas                                ##"
echo "###########################################################################################"
echo "##                             Print "/start" to start system                            ##"
echo "###########################################################################################"

goto 1

:1
< nul set /p str=">>>"
set /p choice=
if '%choice%'=='/start' goto start
if '%choice%'=='/exit' goto exit
if '%choice%'=='/svstart' goto svstart
if '%choice%'=='/setings' goto setings_chose
if '%choice%'=='/st1' goto setings
if '%choice%'=='/st0' goto old_setings

echo "|IRONG COMMAND|"
goto 1

:setings_chose

if '%style%'=='1' goto setings
if '%style%'=='0' goto old_setings

:setings

cls

< nul set /p str="| 1) "/color"  "
echo ^|
< nul set /p str="| 2) "/screen" "
echo ^|
< nul set /p str="| 3) "/music"  "
echo ^|
< nul set /p str="| 4) "/style"  "
echo ^|
< nul set /p str="| 5) "/quit"   "
echo ^|

:4

< nul set /p str=">>>"
set /p choice=
if '%choice%'=='/color' goto color
if '%choice%'=='/screen' goto screen
if '%choice%'=='/music' goto music
if '%choice%'=='/style' goto style
if '%choice%'=='/quit' goto st

echo "|IRONG COMMAND|"
goto 4

:color

< nul set /p str="|choise the color|0-9, A-F"
echo ^|
< nul set /p str=">>>"
set /p color=

cls

goto st

:screen

< nul set /p str="|choise the screen|1,2"
echo ^|
< nul set /p str=">>>"
set /p screen=

cls

goto st

:music

< nul set /p str="|choise the music (on/off)|1, 0"
echo ^|
< nul set /p str=">>>"
set /p music=

cls

goto st

:style

< nul set /p str="|choise the style (new/old)|1, 0"
echo ^|
< nul set /p str=">>>"
set /p style=

cls

goto st

:old_setings

cls

< nul set /p str="|choise the color|0,1, 2... ...11,12"
echo ^|
< nul set /p str=">>>"
set /p color=
color %color%

< nul set /p str="|choise the style|1,2"
echo ^|
< nul set /p str=">>>"
set /p choice=
if '%choice%'=='1' goto st1
if '%choice%'=='2' goto st2

:start

if '%music%'=='1' goto mu1
if '%music%'=='0' goto mu2

:mu1
cscript "loadingkill.vbs"
:mu2
cls
< nul set /p str="loading - [-------------------"
echo ]
pathping -h 1 -p 100 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=------------------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==-----------------"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [===----------------"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [====---------------"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=====--------------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [======-------------"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=======------------"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [========-----------"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=========----------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==========---------"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [===========--------"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [============-------"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=============------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==============-----"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [===============----"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [================---"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=================--"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==================-"
echo ]
pathping -h 1 -p 60 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==================="
echo ]
cls

echo "|LIBRERY 2.1|user choise or create|print "/newus" for new user or "/sinin" for sing in|"

:2
< nul set /p str=">>>"
set /p choice=
if '%choice%'=='/newus' goto newus
if '%choice%'=='/sinin' goto sinin

echo "|IRONG COMMAND|"
goto 2

:newus

echo "|LIBRERY 2.1|user crete|print "name" your new user|"

< nul set /p str=">>>"
set /p user=
md "c:\Users\%username%\Desktop\OS\DESK_1\%user%"
md "c:\Users\%username%\Desktop\OS\DESK_1\%user%\Files"
md "c:\Users\%username%\Desktop\OS\DESK_1\%user%\Programs"

if '%music%'=='1' goto mu3
if '%music%'=='0' goto mu4

:mu3
cscript "loadingkill.vbs"
:mu4
cls
< nul set /p str="loading - [-------------------"
echo ]
pathping -h 1 -p 100 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=------------------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==-----------------"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [===----------------"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [====---------------"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=====--------------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [======-------------"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=======------------"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [========-----------"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=========----------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==========---------"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [===========--------"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [============-------"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=============------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==============-----"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [===============----"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [================---"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=================--"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==================-"
echo ]
pathping -h 1 -p 60 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==================="
echo ]

cscript "loadingkill2.vbs"
cls
cd "c:\Users\%username%\Desktop\OS\DESK_1\%user%"

goto body

:sinin

echo "|LIBRERY 3.0|user sing in|print "name" your user|"

< nul set /p str=">>>"
set /p user=

if '%music%'=='1' goto mu5
if '%music%'=='0' goto mu6

:mu5
cscript "loadingkill.vbs"
:mu6
cls
< nul set /p str="loading - [-------------------"
echo ]
pathping -h 1 -p 100 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=------------------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==-----------------"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [===----------------"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [====---------------"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=====--------------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [======-------------"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=======------------"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [========-----------"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=========----------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==========---------"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [===========--------"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [============-------"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=============------"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==============-----"
echo ]
pathping -h 1 -p 75 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [===============----"
echo ]
pathping -h 1 -p 85 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [================---"
echo ]
pathping -h 1 -p 70 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [=================--"
echo ]
pathping -h 1 -p 80 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==================-"
echo ]
pathping -h 1 -p 60 -q 1 -w 1 127.0.0.1>nul
cls
< nul set /p str="loading - [==================="
echo ]

if '%music%'=='1' goto mu7
if '%music%'=='0' goto mu8

:mu7
cscript "loadingkill2.vbs"
:mu8
cls
cd "c:\Users\%username%\Desktop\OS\DESK_1\%user%"

goto body

:body

< nul set /p str="|LIBRERY 3.0|%user%|%cd%"
echo ^|

:3
< nul set /p str="|print /help to help"
echo ^|
< nul set /p str=">>>"
set /p choice=
if '%choice%'=='/in' goto in
if '%choice%'=='/inf' goto inf
if '%choice%'=='/help' goto help
if '%choice%'=='/help1' goto help1
if '%choice%'=='/help2' goto help2
if '%choice%'=='/help3' goto help3
if '%choice%'=='/help4' goto help4
if '%choice%'=='/back' goto back
if '%choice%'=='/backus' goto backus
if '%choice%'=='/create' goto create
if '%choice%'=='/openvbs' goto openvbs
if '%choice%'=='/openbat' goto openbat
if '%choice%'=='/openpy' goto openpy
if '%choice%'=='/openexe' goto openexe
if '%choice%'=='/combox' goto combox
if '%choice%'=='/comcam' goto comcam
if '%choice%'=='/brous' goto brous
if '%choice%'=='/exit' goto exit

echo "|IRONG COMMAND|"
goto 3

:in

< nul set /p str="|print file name"
echo ^|
< nul set /p str=">>>"
set /p choice=
set backcd=%cd%
cd %choice%

goto body

:inf

< nul set /p str="files in |%cd%| "
echo :
echo {
dir /d /b
echo }

goto body

:help

echo comands:
echo {
echo /in
< nul set /p str="(go in to the selected folder"
echo )
echo /inf
< nul set /p str="(shows all files in the current folder"
echo )
echo /back
< nul set /p str="(back you to previous folder"
echo )
echo /backus
< nul set /p str="(back you to your user folder"
echo )
echo /create
< nul set /p str="(create new folder"
echo )
echo }

goto body

:help1

echo comands:
echo {
echo /help
< nul set /p str="(shows all commands"
echo )
echo /openvbs
< nul set /p str="(open selected vds program"
echo )
echo /openbat
< nul set /p str="(open selected bat program"
echo )
echo /open.py
< nul set /p str="(open selected py program"
echo )
echo /exit
< nul set /p str="(used to exit the OS even at startup"
echo )
echo }

goto body

:help2

echo comands:
echo {
echo /start
< nul set /p str="(used to start the OS"
echo )
echo /svstart
< nul set /p str="(used to save start the OS"
echo )
echo /newus
< nul set /p str="(used to create new user"
echo )
echo /sinin
< nul set /p str="(used to sing in you user"
echo )
echo /setings
< nul set /p str="(open setings"
echo )
echo }

goto body

:help3

echo comands:
echo {
echo /st1
< nul set /p str="(open new setings"
echo )
echo /st0
< nul set /p str="(open old setings"
echo )
echo /combox
< nul set /p str="(open the command box"
echo )
echo /comcam
< nul set /p str="(open the PSS campilator"
echo )
echo /openexe
< nul set /p str="(open selected exe program"
echo )
echo }

goto body

:help4

echo comands:
echo {
echo /brous
< nul set /p str="(open the brouser"
echo )
echo }

goto body

:back

cd %backcd%

goto body

:backus

cd "C:\Users\%username%\Desktop\OS\DESK_1\%user%"

goto body

:create

< nul set /p str="|print name your new folder"
echo ^|
< nul set /p str=">>>"
set /p choice=

md %choice%

goto body

:openvbs

< nul set /p str="|print name your vbs program"
echo ^|
< nul set /p str=">>>"
set /p choice=

set backcd1=%cd%

cd "C:\Users\%username%\Desktop\OS\DESK_1\PROGRAMS"

cscript "%choice%.vbs"

cd %backcd1%

goto body

:openbat

< nul set /p str="|print name your bat program"
echo ^|
< nul set /p str=">>>"
set /p choice=

set backcd1=%cd%

cd "C:\Users\%username%\Desktop\OS\DESK_1\PROGRAMS"

start "%choice%" "%choice%.bat"

cd %backcd1%

goto body

:openpy

< nul set /p str="|print name your py program"
echo ^|
< nul set /p str=">>>"
set /p choice=

set backcd1=%cd%

cd "C:\Users\%username%\Desktop\OS\DESK_1\PROGRAMS"

start "%choice%" "%choice%.py"

cd %backcd1%

goto body

:openexe

< nul set /p str="|print name your exe program"
echo ^|
< nul set /p str=">>>"
set /p choice=

set backcd1=%cd%

cd "C:\Users\%username%\Desktop\OS\DESK_1\PROGRAMS"

start "%choice%" "%choice%.exe"

cd %backcd1%

goto body

:combox

< nul set /p str="|Comand box opened"
echo ^|

set backcd1=%cd%

cd "C:\Users\%username%\Desktop\OS"

start "Comand PSS" "command box.py"

cd %backcd1%

goto body

:comcam

< nul set /p str="|Comand campilator opened"
echo ^|

set backcd1=%cd%

cd "C:\Users\%username%\Desktop\OS"

start "Comand Campilator" "command campilator.py"

cd %backcd1%

goto body

:brous

< nul set /p str="|Brouser opened"
echo ^|

set backcd1=%cd%

cd "C:\Users\%username%\Desktop\OS\Standart browser"

start "Brouser" "palemoon.exe"

cd %backcd1%

goto body

:svstart

:exit