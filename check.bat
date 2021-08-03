@echo off

set /p pemFilePath=Enter .pem file path: 
set /p zipFilePath=Enter Validator Key zip file path: 
set /p instanceCredential=Enter AWS public IPv4 and external DNS hostname[eg: ec2-user@ec2-3-87-129-138.compute-1.amazonaws.com]: 

ICACLS "%pemFilePath%" /grant:r "users:(R)" /C

scp -i "%pemFilePath%" -r "%zipFilePath%" %instanceCredential%:/home/ec2-user

@REM ICACLS "%pemFilePath%" /grant:r "users:(R)" /C

ssh -i "%pemFilePath%" %instanceCredential%
