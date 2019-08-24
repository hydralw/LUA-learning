-- 面向对象
function clone(tab)
  local ins = {}
  for key, var in pairs(tab) do
    ins[key] = var
  end
  return ins
end          -- 克隆，以创建实例

-- function copy(dist,tab)

-- end

People = {}  -- 创建People类，两种方法封装
People.sayHi = function (self)
  print(self.name.." say hi")
end
-- function People.sayHi(self)
--   print(self.name.." say hi")
-- end

-- local p = clone(People) --创建实例
-- p.sayHi()

-- 构造方法
People.new = function(name)
  local self = clone(People)
  self.name = name

  return self
end

local p = People.new("ZhangSan")
-- p.sayHi(p)
p:sayHi()

-- 继承
Man = {}
Man.new = function (name)
  local self = People.name(name)
  
  return self
end