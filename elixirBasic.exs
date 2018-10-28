add = fn a, b -> a + b end
add.(1, 2)
double = fn a -> add.(a, a) end
(fn -> x = 0 end).()
