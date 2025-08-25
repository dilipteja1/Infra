:: ====================================================
:: Batch file to backup the ://D drive to NAS
:: ====================================================
&commat;echo off

:: Get computer name in lowercase
for /f %%i in ('powershell -command "$env:COMPUTERNAME.ToLower()"') do set HOST=%%i

set NAS_SERVER = 192.168.2.63
set NASPATH = \\%NAS_SERVER%\mnt\Duttlab_NAS\PC_backup\%HOST%

set SOURCE = D:\
set DEST = Z:\
set USER = PC_backup_user
set PASS = diamond1950
set LOGDIR = C:\backup_logs

:: Ensure log directory exists
if not exist "%LOGDIR%" mkdir "%LOGDIR%"

:: Create log file with date stamp
set LOG=%LOGDIR%\backup_%DATE:~-4%%DATE:~4,2%%DATE:~7,2%.log

:: ================================
:: Step 1: Map NAS if not already mapped
:: ================================
echo Checking NAS mapping...
if not exist Z:\ (
    echo Mapping NAS drive...
    net use Z: %NASPATH% /user:%USER% %PASS% /persistent:yes
)

:: ================================
:: Step 2: Run Robocopy backup
:: ================================
echo Starting backup from %SOURCE% to %DEST% ...
robocopy "%SOURCE%" "%DEST%" /E /COPYALL /R:3 /W:10 /FFT /Z /XA:H /V /NP /LOG+:%LOG%

:: Explanation:
:: /E       -> Copy all subfolders, including empty ones
:: /COPY:DAT -> Copy Data, Attributes, Timestamps
:: /R:3     -> Retry 3 times on failed copies
:: /W:10    -> Wait 10 sec between retries
:: /FFT     -> Compatible file time checks (NAS/Windows)
:: /Z       -> Restartable mode (good for network copies)
:: /XA:H    -> Skip hidden files
:: /V       -> Verbose logging
:: /NP      -> No progress percentage (cleaner logs)

echo Backup completed! Log saved to %LOG%

:: ================================
:: Step 3: (Optional) Disconnect NAS after backup
:: Uncomment if you don’t want the drive left mapped
:: net use Z: /delete /y
:: ================================

EXIT