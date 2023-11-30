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
call epmautomate downloadFile "EPM_SAMPLE_2.zip"

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


echo ----------------------------------------------

echo Disconnecting VPN

echo ----------------------------------------------
call "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe" disconnect

echo ----------------------------------------------

echo Disconnected Successfully


echo ----------------------------------------------

echo Exporting file to GIT repository

echo ----------------------------------------------

echo Checking GIT LOCAL Status

call git status

echo ----------------------------------------------

echo Adding files to the stage Area

call git add .

echo ----------------------------------------------

echo Initial commit

call git commit -m "All files added"

echo ----------------------------------------------

echo Pushing files in cloud master

call git push -f origin master

echo ----------------------------------------------

echo End of Script





