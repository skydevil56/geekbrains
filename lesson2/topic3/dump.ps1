mysqldump.exe example > example.sql
mysql.exe -e "CREATE DATABASE sample CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"
Get-Content .\example.sql | mysql sample