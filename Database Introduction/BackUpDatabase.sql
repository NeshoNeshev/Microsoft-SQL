BACKUP DATABASE SoftUni TO DISK = 'C:\Downloads\Softuni-backup.bak'

USE master

DROP DATABASE SoftUni

RESTORE DATABASE SoftUni FROM DISK = 'C:\Downloads\Softuni-backup.bak';