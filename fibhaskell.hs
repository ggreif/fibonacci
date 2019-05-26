fib@(_:tail) = 0 : 1 : zipWith (+) fib tail

main = print (take 10 fib)

-- The first line defines the infinite fibonacci sequence
-- by means of a recursive equation.

-- Haskell is lazy, so you query the prefix of fib as shown
-- in line 3. Only the valuse you ask for will be computed.

-- `:` is the list constructor which build a list from a head
-- and a (shorter) list you already have constructed.

-- Left hand sides of equations (before the `=`) are patterns
-- patterns can bind numerous bindings (`fib` and `tail` in
-- line 1, `main` in line 3). Data constructors appearing in
-- patterns are used to deconstruct compound values.
-- This is how we get the whole sequence for `fib` and also
-- strip its head off, obtaining its `tail` in the same pattern.

-- To the right of the `=` we have the proper value of the
-- sequence, where we can see how it is defined.
-- `zipWith` is a higher-order function (which takes another
-- function as an argument) consuming two lists, here
-- building the point-wise sum of the elements of the two
-- lists.
