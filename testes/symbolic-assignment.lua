print("testing symbolic assignment and equality")

local x ← 1
assert(x = 1)
assert(x == 1)

2 → x
assert(x = 2)

local y ← 0
x → y
assert(y = 2)

5 → x → y
assert(x = 5)
assert(y = 5)

x ← 3
assert(x = 3)

local t ← {
  answer ← 42,
  [2] ← "two",
}
assert(t.answer = 42)
assert(t[2] = "two")

99 → t.answer
assert(t.answer = 99)

"changed" → t[2]
assert(t[2] = "changed")

local sum ← 0
for i ← 1, 4 do
  sum ← sum + i
end
assert(sum = 10)

local equality ← (1 + 1 = 2)
assert(equality)
assert((1 = 1) and (2 ~= 1))

print("symbolic assignment: ok")
