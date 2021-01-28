let rec fib n =
    if n = 1 || n = 2 then 1 else
    fib (n-1) + fib (n-2)
in 
assert (fib 1 = 1);
assert (fib 2 = 1);
assert (fib 3 = 2);
assert (fib 4 = 3);
assert (fib 5 = 5);
assert (fib 6 = 8);
assert (fib 7 = 13);