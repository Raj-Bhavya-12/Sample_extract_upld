@echo off


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

call git commit -m "All files added again"

echo ----------------------------------------------

echo Pushing files in cloud master

call git push -f origin master

echo ----------------------------------------------

echo End of Script





