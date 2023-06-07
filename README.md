## JetBrains家族产品激活

### 0x01 废话

新安装 JetBrains 系软件后，<del>不要马上打开！</del>特别是v2021.3之后的版本。

1、脚本检索 JetBrains 默认安装路径：`C:\Program Files\JetBrains` 。

2、如 JetBrains 是自定义路径安装，需更改 `jbPath` ，如：`E:\JetBrains\Goland` 。

3、软件安装路径和 JetBrains_all_Activator 脚本最好存放非中文路径(理论上应该<del>不受影响</del>)。


### 0x02 操作

管理员权限运行 `JetBrainsCrack.bat`

<div align=center><img src="img/image-20211211190001381.png" /></div>

打开JetBrains系软件，选择使用激活码激活。

<div align=center><img src="img/image-20211211190523186.png" /></div>

适用v2021.3及之前的，<del>当然也适用于新版本，理论上全版本可用。</del>

<div align=center><img src="img/image-20211211190803924.png" /></div>



===========================================================================

其中的 `jetbrains-agent.jar` 来源网上，安全性自检。

### 0x03 有可能存在的问题

bat脚本卡住？

1、手动操作，编辑 `C:\Windows\System32\drivers\etc\hosts`，添加 `127.0.0.1 account.jetbrains.com jrebel.npegeek.com`
2、复制 jetbrains-agent.jar 到软件安装目录下
3、编辑 软件安装路径\bin\ 下的 `*.exe.vmoptions` 文件，添加： jetbrains-agent.jar 所在的路径。如：`--javaagent:D:\jetbrains-agent.jar`
4、cpoy key.txt 
