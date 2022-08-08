# Hosts



```
@echo off
color 0a
set HOSTS=C:\Windows\system32\drivers\etc\hosts
::赋予hosts文件读写权限
cacls %HOSTS% /e /c /g everyone:c
cls
echo # Test hosts >> %HOSTS%
echo 172.16.0.1 www.netkiller.cn >> %HOSTS%
exit
```

