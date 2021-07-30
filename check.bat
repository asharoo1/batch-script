@echo off
set /p pemFileName=Enter .pem file Name: 
set /p pemFilePath=Enter .pem file path: 
set /p zipFilePath=Enter eth2.0-deposit-cli.zip file path:
set /p instanceCredential=Enter AWS Instance Credntial: 


scp -i %pemFilePath% -r %zipFilePath% %instanceCredential%:/home/ec2-user

ssh -i %pemFileName% %instanceCredential%
