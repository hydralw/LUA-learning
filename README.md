# LUA学习
> LUA是用C语言编写的可扩展，轻量级的编程语言.Lua从一开始就设计成一个可以与用C语言和其他传统语言编写的代码集成的软件。 这种集成带来许多好处。 Lua并没有尝试做C语言已经做过的事情，而是提供C语言不擅长的东西：与硬件的良好距离，动态结构，无冗余，易于测试和调试。 为此，Lua是具有安全的环境，自动内存管理以及用于处理动态大小的字符串和其他类型数据的良好工具。

### 我学习LUA语言主要是为用于与```c语言```和```cocos2d```一起制作游戏。现在开始学习吧

## NO.1 开发环境配置

在Mac oxs上安装LUA
<pre>curl -R -O http://www.lua.org/ftp/lua-5.3.5.tar.gz
tar zxf lua-5.3.5.tar.gz
cd lua-5.3.5
make macosx test
make install</code></pre>
没有安装Xcode和命令行工具，将无法使用make命令。 从Mac app store安装Xcode。 然后转到Xcode的参考，然后切换到Downloads并安装名为“Command Line Tools”的组件。 完成该过程后，就可以使用make命令。安装完毕之后，我们开始第一次测试。
### 第一个程序
+ 创建HelloWorld.lua文件，打开
<pre>print("Hello World!")   --[[这是多行注释 --]]  --这是单行注释</code></pre>
使用`lua helloWorld.lua`执行文件，这是默认模式编程
+ 也可以使用交互式编程
使用命令`lua -i`或者`lua`来启动
<pre>print("Hello World!")</code></pre>
接着按下Enter键，我们就可以看到结果。

## NO.2基本语法
LUA的基本语法与c语言相似
Lua 表示符用于定义一个变量，函数获取其他用户定义的项。标示符以一个字母 A 到 Z 或 a 到 z 或下划线 _ 开头后加上0个或多个字母，下划线，数字（0到9）。最好不要使用下划线加大写字母的标示符，因为Lua的保留字也是这样的。Lua 不允许使用特殊字符如 @, $, 和 % 来定义标示符。Lua 是一个区分大小写的编程语言。

### 关键词
以下列出了 Lua 的保留关键字。保留关键字不能作为常量或变量或其他用户自定义标示符：
<pre>and break do	else
elseif	end	false	for 
function if	in local 
nil	not	or repeat 
return then	true until
while</code></pre>
一般约定，以下划线开头连接一串大写字母的名字（比如 _VERSION）被保留用于 Lua 内部全局变量。

### 空白格
只包含空格(可能带有注释)的行称为空行，Lua解释器完全忽略它。空白符是Lua用来描述空格，制表符，换行符和注释的术语。 空格符将语句的一部分与另一部分分开，并使解释器能够识别语句中的一个元素(如int结束)和下一个元素的开始位置。 因此，在以下声明中
<pre>local age</code></pre>
在local和age之间必须至少有一个空格字符(通常是空格)，以便解释器能够区分它们。