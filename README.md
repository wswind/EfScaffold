安装ef tool：
dotnet tool install --global dotnet-ef --version 3.1.17

运行scaffold.cmd 
(1)输入连接串，如： Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;
(2)输入要scaffold的表名，通过-t分割 如： -t table1 -t table2
(3)确认输入y，生成文件位于scaffold