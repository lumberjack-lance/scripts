:: Batch routine to create an archive folder and subfolder with the current date and
:: archive the contents of the current directory in that folder
:: created by lance3witt@gmail.com
:: parent project: https://github.com/lumberjack-lance/scripts.git

:: checks to see if the archive folder has been created
if not exist ARCHIVE\%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%  mkdir ARCHIVE\%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%

:: copies all files to archive folder
robocopy * ARCHIVE\%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%

:: sets the archive folder to read only
attrib  +R  ARCHIVE\%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%\* /S

echo "All files in the current directory have been archived."

:: un-comment the line below to pause the CMD window before closing 
:: pause

:: un-comment the line below to spawn a new sheel and delete this batch file from the 
:: current directory
:: start /b "" cmd /c del "archive.bat"&exit /b
