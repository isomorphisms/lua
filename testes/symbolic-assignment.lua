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

local function changed_value()
  return "changed"
end
changed_value() → t[2]
assert(t[2] = "changed")

local sum ← 0
for i ← 1, 4 do
  sum ← sum + i
end
assert(sum = 10)

local equality ← (1 + 1 = 2)
assert(equality)
assert((1 = 1) and (2 ~= 1))
assert(2 ≟ 2)
assert(2 ≠ 3)
assert(2 ≤ 2)
assert(3 ≥ 2)

local arithmetic ← 6 × 7
assert(arithmetic = 42)
assert(84 ÷ 2 = 42)
assert(5 − 3 = 2)

local square ← λ(x)
  return x × x
end
assert(square(6) = 36)

local increment ← ƒ(x)
  return x + 1
end
assert(increment(8) = 9)

print("symbolic assignment: ok")
