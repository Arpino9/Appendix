@echo off
setlocal

rem 作成先の階層と生成するフォルダ名を定義する
rem 以下は「デスクトップ ＞ 作業フォルダ ＞ mm月」の順にフォルダ階層がある場合、当月内のフォルダに「yyyy/MM/DD」の形式でフォルダを作成している
rem (2桁指定なので、6月なら「06月」のようにフォルダ名を作成しておくこと)
rem 文字化けする場合は、コマンドプロンプトから「chcp」で検索。932ならShift-JISなので、バッチファイルの文字コードもANSIにする。
set Month=%date:~5,2%
set DESTINATION_FOLDER=%userprofile%\Desktop\作業フォルダ\%Month%月\
set FOLDER_NAME=%date:~0,4%%date:~5,2%%date:~8,2%

mkdir %DESTINATION_FOLDER%%FOLDER_NAME%

endlocal
exit
