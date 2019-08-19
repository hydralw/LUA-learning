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
<pre>and break do else
elseif end false for 
function if in local 
nil not or repeat 
return then true until
while</code></pre>
一般约定，以下划线开头连接一串大写字母的名字（比如 _VERSION）被保留用于 Lua 内部全局变量。

### 空白格
只包含空格(可能带有注释)的行称为空行，Lua解释器完全忽略它。空白符是Lua用来描述空格，制表符，换行符和注释的术语。 空格符将语句的一部分与另一部分分开，并使解释器能够识别语句中的一个元素(如int结束)和下一个元素的开始位置。 因此，在以下声明中
<pre>local age</code></pre>
在local和age之间必须至少有一个空格字符(通常是空格)，以便解释器能够区分它们。

## NO.3LUA变量
Lua区分大小写。Lua中有八种基本类型的值。在Lua中，虽然没有可变数据类型，但根据变量的范围有三种类型。
+ 全局变量 - 所有变量都被视为全局变量，除非明确声明为局部变量。
+ 局部变量 - 当为变量指定类型为local时，其范围受函数范围限制。
+ 表字段 - 这是一种特殊类型的变量，可以保存除nil之外的任何内容，包括函数。
全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的全局变量也不会出错，只不过得到的结果是：nil。
<pre>
print(b)
-->nil
b = 10
print(b)
-->10
</code></pre>

如果你想删除一个全局变量，只需要将变量赋值为nil。
<pre>
b = nil
print(b)
-->nil
</code></pre>
这样变量b就好像从没被使用过一样。换句话说, 当且仅当一个变量不等于nil时，这个变量即存在。

### LUA变量定义
<pre>
-- 申明类型:
local a, b

-- 赋值
a = 10
b = 30

print("value of a:", a)
print("value of b:", b)
-->value of a:30
   value of b:10

-- 交换数据
b, a = a, b --左值右值

print("value of a:", a)
print("value of b:", b)
-->value of a:30
   value of b:10

f = 70.0/3.0
print("value of f:", f)
-->value of f:23.333333333333
</code></pre>

### 数据类型
+ nil 用于区分值与某些数据或没有(nil)数据。对于全局变量和 table，nil 还有一个"删除"作用，给全局变量或者 table 表里的变量赋一个 nil 值，等同于把它们删掉。
+ boolean 包括true和false作为值，通常用于条件检查。
>默认情况下，在分配值或初始化之前，所有变量都将指向nil。 在Lua中，在条件检查的情况下，零和空字符串认为是：true。 因此，使用布尔运算时必须小心。
+ number 表示实数(双精度浮点)数字。Lua 默认只有一种 number 类型 -- double（双精度）类型（默认类型可以修改 luaconf.h 里的定义）
+ string 表示字符数组。字符串由一对双引号或单引号来表示，2个方括号 "[[]]" 来表示"一块"字符串。字符串连接使用的是”..“
<pre>
print("a" .. 'b')
-->ab
print(157 .. 428)
-->157428
</code></pre>
+ function 表示用C语言或Lua编写的方法。
<pre>
function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))
-->120
   120
</code></pre>
function 可以以匿名函数（anonymous function）的方式通过参数传递
<pre>
function anonymous(tab, fun) ❌
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end
tab = { key1 = "val1", key2 = "val2" }
anonymous(tab, function(key, val)
    return key .. " = " .. val
end)
-->key1 = val1
   key2 = val2
</code></pre>
+ userdata 表示一种用户自定义数据，用于表示一种由应用程序或 C/C++ 语言库所创建的类型，可以将任意 C/C++ 的任意数据类型的数据（通常是 struct 和 指针）存储到 Lua 变量中调用。
+ thread 在 Lua 里，最主要的线程是协同程序（coroutine）。它跟线程（thread）差不多，拥有自己独立的栈、局部变量和指令指针，可以跟其他协同程序共享全局变量和其他大部分东西。线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）时才会暂停。
+ table 表示普通数组，符号表，集合，记录，图形，树等，并实现关联数组。 它可以保存任何值(除了nil)。在Lua里，table的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。也可以在表里添加一些数据，直接初始化表
Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。
<pre>
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end
-->key : value
   10 : 33
</code></pre>
不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。
<pre>
local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end
-->Key 1
   Key 2
   Key 3
   Key 4
</code></pre>
table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。
<pre>
print(type("Hello world"))      -->string
print(type(10.4*3))             -->numble
print(type(print))              -->function
print(type(type))               -->function
print(type(true))               -->boolean
print(type(nil))                -->nil
print(type(type(X)))            -->string
</code></pre>

### 