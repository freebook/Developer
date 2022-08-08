## 进程管理

### 列出进程
```
C:\Users\neo>tasklist

映像名称                       PID 会话名              会话#       内存使用
========================= ======== ================ =========== ============
System Idle Process              0 Services                   0          4 K
System                           4 Services                   0    672,340 K
smss.exe                       352 Services                   0        832 K
csrss.exe                      472 Services                   0      4,868 K
wininit.exe                    560 Services                   0      4,268 K
csrss.exe                      568 Console                    1     22,820 K
services.exe                   632 Services                   0      6,180 K
lsass.exe                      640 Services                   0     12,764 K
winlogon.exe                   712 Console                    1      7,900 K
svchost.exe                    796 Services                   0     19,028 K
svchost.exe                    852 Services                   0     10,536 K
dwm.exe                        964 Console                    1     69,032 K
svchost.exe                   1000 Services                   0     17,556 K
svchost.exe                    324 Services                   0     55,316 K
```

### 查找进程
```
C:\Users\neo>tasklist /fi "imagename eq chrome.exe"

映像名称                       PID 会话名              会话#       内存使用
========================= ======== ================ =========== ============
chrome.exe                    5232 Console                    1    156,960 K
chrome.exe                    8176 Console                    1      5,888 K
chrome.exe                    3892 Console                    1     17,844 K
chrome.exe                     572 Console                    1     20,816 K
chrome.exe                    5224 Console                    1    100,444 K
chrome.exe                    1908 Console                    1     18,096 K
chrome.exe                    5000 Console                    1     18,356 K
chrome.exe                     664 Console                    1     19,904 K
chrome.exe                    3628 Console                    1     24,364 K
chrome.exe                    3568 Console                    1     22,468 K
chrome.exe                    3468 Console                    1     14,804 K
chrome.exe                    4040 Console                    1     15,752 K
chrome.exe                    2924 Console                    1     61,228 K
chrome.exe                    7928 Console                    1     18,792 K
chrome.exe                    3716 Console                    1     66,308 K
chrome.exe                   10284 Console                    1     49,820 K
```

