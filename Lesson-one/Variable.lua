-- 申明类型:
local a, b

-- 赋值
a = 10
b = 30

print("value of a:", a)
print("value of b:", b)

-- 交换数据
b, a = a, b -- 左值右值,a的值赋给b，b的值赋给a

print("value of a:", a)
print("value of b:", b)

f = 70.0/3.0
print("value of f:", f)

-- 数据类型
print(type("Hello world"))      
print(type(10.4*3))           
print(type(print))              
print(type(type))             
print(type(true))              
print(type(nil))                
print(type(type(X)))            

arr = {}

for var=1, 100 do
  table.insert(arr,1,var)
end

-- for key, var in pairs(arr) do
--   print(key, var)
-- end
print(table.maxn(arr))