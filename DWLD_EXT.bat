@echo off

echo ----------------------------------------------

echo Logging into PBCS application

echo ----------------------------------------------
call epmautomate login epm_default_cloud_admin epm_cloud http://phoenix229383.appsdev.fusionappsdphx1.oraclevcn.com:9116/epmcloud

echo ----------------------------------------------

echo Logging Successful

echo ----------------------------------------------

echo ----------------------------------------------

echo Downloading file from the application

echo ----------------------------------------------
call epmautomate downloadFile "BRS_SAMPLE_1.zip"

echo ----------------------------------------------

echo Download Successful

echo ----------------------------------------------

echo ----------------------------------------------

echo Logging out from PBCS application

echo ----------------------------------------------
call epmautomate logout


echo ----------------------------------------------

echo Logout Successful

echo ----------------------------------------------







