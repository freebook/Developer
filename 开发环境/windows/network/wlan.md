Network
=====

Enable / Disable
-----

netsh interface set interface "本地连接" "disabled"

netsh interface set interface "本地连接" "enabled"

rename
-----
netsh interface set interface "以太网" newname=LAN


WLAN Share
-----

### 设置SSID与密钥
netsh wlan set hostednetwork mode=allow ssid="Name" key=Wifi_Password

### 启动
netsh wlan set hostednetwork mode=allow
netsh wlan set hostednetwork ssid=netkiller key=ChenJingFeng2015
netsh wlan start hostednetwork

### 停止
netsh wlan stop hostednetwork
netsh wlan set hostednetwork mode=disallow

### 显示接口信息
PS C:\Windows\system32> netsh wlan show interfaces

系统上有 1 个接口:

    名称                   : WLAN
    描述                   : Qualcomm Atheros 11G USB Wireless Network Adapter
    GUID                   : d17c84dc-4abf-4d99-9730-fba417553fc9
    物理地址               : 5c:63:bf:27:3f:b6
    状态                   : 已断开连接
    无线电状态           : 硬件 开
                             软件 开

    承载网络状态  : 已启动
    
### 显示 SSID 列表
PS C:\Windows\system32> netsh wlan show networks

接口名称 : WLAN
当前有 10 个网络可见。

SSID 1 : Xiaomi
    Network type            : 结构
    身份验证                : WPA2 - 个人
    加密                    : CCMP

SSID 2 : szgw-ib-test
    Network type            : 结构
    身份验证                : WPA2 - 个人
    加密                    : CCMP    