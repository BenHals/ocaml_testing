let rec h n prevprev prev = 
    if n = 0 then prevprev else
    if n = 1 then prev else
    h (n-1) prev (prevprev + prev) in
let fast_fib n = h n 0 1 in
assert (fast_fib 1 = 1);
assert (fast_fib 2 = 1);
assert (fast_fib 3 = 2);
assert (fast_fib 4 = 3);
assert (fast_fib 5 = 5);
assert (fast_fib 6 = 8);
assert (fast_fib 7 = 13);
assert (fast_fib 7229 > 0);
assert (fast_fib 7230 < 0);