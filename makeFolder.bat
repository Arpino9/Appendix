@echo off
setlocal

rem 作成先のフォルダ名と生成するフォルダ名を定義する
rem 以下は「デスクトップ ＞ 作業フォルダ ＞ m月」のディレクトリ構成の場合、当月内のフォルダに「yyyy/MM/DD」の形式でフォルダを作成している
rem 文字化けする場合は、コマンドプロンプトから「chcp」で検索。932ならShift-JISなので、バッチファイルの文字コードもANSIにする。
set Month=%date:~5,2%
set FOLDER=%userprofile%\Desktop\作業フォルダ\%Month%月\
set FILE_NAME=%date:~0,4%%date:~5,2%%date:~8,2%

mkdir %FOLDER%%FILE_NAME%

endlocal
exit
