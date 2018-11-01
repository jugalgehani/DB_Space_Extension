cd "C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\Binn"

SQLCMD -S "IN-AIR-GPADM1\SQLEXPRESS" -U "sa" -P "Jan@2016" -W -i "C:\Database_Extension\DB_Extension.sql" -b

timeout /t 10 /nobreak > NUL

cd C:\Weblogic_12c

powershell ./DB_Extension_Message.ps1