# LUA学习
> LUA是用C语言编写的可扩展，轻量级的编程语言.Lua从一开始就设计成一个可以与用C语言和其他传统语言编写的代码集成的软件。 这种集成带来许多好处。 Lua并没有尝试做C语言已经做过的事情，而是提供C语言不擅长的东西：与硬件的良好距离，动态结构，无冗余，易于测试和调试。 为此，Lua是具有安全的环境，自动内存管理以及用于处理动态大小的字符串和其他类型数据的良好工具。

### 我学习LUA语言主要是为用于与**c语言**和**cocos2d**一起制作游戏。**现在开始学习吧**

## NO.1 开发环境配置

在Mac oxs上安装LUA
<pre>curl -R -O http://www.lua.org/ftp/lua-5.3.5.tar.gz
tar zxf lua-5.3.5.tar.gz
cd lua-5.3.5
make macosx test
make install</code></pre>
没有安装Xcode和命令行工具，将无法使用make命令。 从Mac app store安装Xcode。 然后转到Xcode的参考，然后切换到Downloads并安装名为“Command Line Tools”的组件。 完成该过程后，就可以使用make命令。