@echo off

set /p connectstring=输入数据库连接: 
if "%connectstring%" == "" (
  goto end
)
set /p tables=输入要处理的表名（-t table1 -t table2），全库生成直接回车: 
echo 即将执行下列语句：
echo dotnet ef dbcontext scaffold "%connectstring%" Microsoft.EntityFrameworkCore.SqlServer -f -o scaffold %tables%
set /p confirm=是否确认(y/n)： 
if "%confirm%" neq "y" (
 goto end
)

dotnet ef dbcontext scaffold "%connectstring%" Microsoft.EntityFrameworkCore.SqlServer -f -o scaffold %tables%
pause

:end