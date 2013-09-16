@echo off
echo "installing"
mkdir %HOMEDRIVE%%HOMEPATH%\hgtv-giveaway
xcopy /y "%~dp0ssleay32.dll" "%WINDIR%\System32\"
xcopy /y "%~dp0mk-ca-bundle.vbs" "%WINDIR%\System32\"
xcopy /y "%~dp0libeay32.dll" "%WINDIR%\System32\"
xcopy /y "%~dp0libcurl.dll" "%WINDIR%\System32\"
xcopy /y "%~dp0curl.exe" "%WINDIR%\System32\"
xcopy /y "%~dp0urban-oasis-2013.bat" "%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\"
xcopy /y "%~dp0data-frontdoor.txt" "%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\"
xcopy /y "%~dp0data-hgtv.txt" "%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\"
xcopy /y "%~dp0task-template.xml" "%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\"
cd %HOMEDRIVE%%HOMEPATH%\hgtv-giveaway

SET /P USERNAME="Enter GBHEM username: "
SET /P PASSWORD="Enter GBHEM password: "
SET /P FN="Enter First Name: "
SET /P LN="Enter Last Name: "
SET /P EM="Enter EMail: "
SET /P AD="Enter Address: "
SET /P CI="Enter City: "
SET /P ZP="Enter Zip: "
SET /P PH="Enter Phone: "
SET /P GE="Enter Gender (m or f): "
SET /P BY="Enter Birth Year: "

powershell -command "& '%~dp0replace.ps1' '%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\task-template.xml' '%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\urban-oasis-2013.bat' '%USERNAME%' '%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\temp.xml' '%FN%' '%LN%' '%EM%' '%AD%' '%CI%' '%ZP%' '%PH%' '%GE%' '%BY%' '%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\data-frontdoor.txt' '%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\data-hgtv.txt'"

schtasks /create /s localhost /ru "GBHEMORG\%USERNAME%" /rp "%PASSWORD%" /xml "%HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\temp.xml" /TN "HGTV Urban Oasis 2013"
del %HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\temp.xml
del %HOMEDRIVE%%HOMEPATH%\hgtv-giveaway\task-template.xml