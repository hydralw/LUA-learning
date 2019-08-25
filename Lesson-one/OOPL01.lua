-- 复制表的方式实现面向对象
function clone(tab)
  local ins = {}
  for key, var in pairs(tab) do
    ins[key] = var
  end
  return ins
end          -- 克隆，以创建实例

People = {}  -- 创建People类
function People.sayHi(self)
  print(self.name.." say hi")
end

-- 构造方法
People.new = function(name)
  local self = clone(People)
  self.name = name

  return self
end

-- 创建实例
local p = People.new("ZhangSan")
-- p.sayHi(p)
p:sayHi()

-- 类的继承
function copy(dist,tab)
  for key, var in pairs(tab) do
    dist[key] = var
  end
end  -- 复制

Man = {}
Man.new = function (name)
  local self = People.new(name)
  copy(self, Man)
  return self
end

-- 创建新的方法
Man.sayHello = function(name)
  print("Man say hello")
end

-- 重写方法
function Man.sayHi(self)
  print("People say hi to "..self.name)
end

-- 创建实例
local m = Man.new("LiSi")
m:sayHello()
m:sayHi() -- 继承父类的方法
