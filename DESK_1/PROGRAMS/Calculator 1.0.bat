@echo off

echo "+-----------------------------------------------------------------------------------------+"
echo "|                                                                                         |"
echo "|              ---    --    |      ---   |  |    |      --    ---    /\    |\   1.0       |"
echo "|             |      |--|   |     |      |  |    |     |--|    |    |  |   |/             |"
echo "|             |___   |  |   |__   |___    \/ \   |__   |  |    |     \/    | \            |"
echo "|                                                                                         |"
echo "+-----------------------------------------------------------------------------------------+"

:1

< nul set /p str="|print arithmetic operation (1 = +, 2 = -, 3 = *, 4 = /)"
echo ^|
< nul set /p str=">>>"
set /p choice=

if '%choice%'=='/1' goto plus
if '%choice%'=='/2' goto minus
if '%choice%'=='/3' goto multiplication
if '%choice%'=='/4' goto division

echo "|IRONG COMAND|"

goto 1

:plus

< nul set /p str="|print first number"
echo ^|
< nul set /p str=">>>"
set /p choice1=

< nul set /p str="|print second number"
echo ^|
< nul set /p str=">>>"
set /p choice2=

set /A ansver = %choice1%+%choice2%
< nul set /p str="|your number is %ansver%"
echo ^|

< nul set /p str="|print "/rep" to repeat or "/exit" to exit"
echo ^|
< nul set /p str=">>>"
set /p choice=

if '%choice%'=='/rep' goto 1
if '%choice%'=='/exit' goto exit

:minus

< nul set /p str="|print first number"
echo ^|
< nul set /p str=">>>"
set /p choice1=

< nul set /p str="|print second number"
echo ^|
< nul set /p str=">>>"
set /p choice2=

set /A ansver = %choice1%-%choice2%
< nul set /p str="|your number is %ansver%"
echo ^|

< nul set /p str="|print "/rep" to repeat or "/exit" to exit"
echo ^|
< nul set /p str=">>>"
set /p choice=

if '%choice%'=='/rep' goto 1
if '%choice%'=='/exit' goto exit

:multiplication

< nul set /p str="|print first number"
echo ^|
< nul set /p str=">>>"
set /p choice1=

< nul set /p str="|print second number"
echo ^|
< nul set /p str=">>>"
set /p choice2=

set /A ansver = %choice1%*%choice2%
< nul set /p str="|your number is %ansver%"
echo ^|

< nul set /p str="|print "/rep" to repeat or "/exit" to exit"
echo ^|
< nul set /p str=">>>"
set /p choice=

if '%choice%'=='/rep' goto 1
if '%choice%'=='/exit' goto exit

:division

< nul set /p str="|print first number"
echo ^|
< nul set /p str=">>>"
set /p choice1=

< nul set /p str="|print second number"
echo ^|
< nul set /p str=">>>"
set /p choice2=

set /A ansver = %choice1%/%choice2%
< nul set /p str="|your number is %ansver%"
echo ^|

< nul set /p str="|print "/rep" to repeat or "/exit" to exit"
echo ^|
< nul set /p str=">>>"
set /p choice=

if '%choice%'=='/rep' goto 1
if '%choice%'=='/exit' goto exit

:exit
