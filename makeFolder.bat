@echo off
setlocal

rem 作成先のフォルダ名と生成するフォルダ名を定義する
set Month=%date:~5,2%
set FOLDER=%userprofile%\Desktop\作業フォルダ\%Month%月\
set FILE_NAME=%date:~0,4%%date:~5,2%%date:~8,2%

mkdir %FOLDER%%FILE_NAME%

endlocal
exit
