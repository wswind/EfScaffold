@echo off

set /p connectstring=�������ݿ�����: 
if "%connectstring%" == "" (
  goto end
)
set /p tables=����Ҫ����ı�����-t table1 -t table2����ȫ������ֱ�ӻس�: 
echo ����ִ��������䣺
echo dotnet ef dbcontext scaffold "%connectstring%" Microsoft.EntityFrameworkCore.SqlServer -f -o scaffold %tables%
set /p confirm=�Ƿ�ȷ��(y/n)�� 
if "%confirm%" neq "y" (
 goto end
)

dotnet ef dbcontext scaffold "%connectstring%" Microsoft.EntityFrameworkCore.SqlServer -f -o scaffold %tables%
pause

:end