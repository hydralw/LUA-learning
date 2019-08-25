-- 以函数闭包的方式实现面向对象
function People(name) -- 一个函数包
  local self = {}
  local function init()  -- 初始化操作，私有的方法 
    self.name = name
  end
  self.sayHi = function()
    print(self.name.." say Hi")
  end
  init() -- 执行初始化
  return self
end

local p = People("ZhangSan")
p:sayHi()

-- 类的继承 
function Man(name)
  local self = People(name)
  self.sayHello = function()
    print(self.name.." say Hello")
  end
  self.sayHi = function()  -- 重写方法
    print(self.name.." say Hi twice")
  end
  return self
end
local m = Man("LiSi")
m:sayHello()
m:sayHi()