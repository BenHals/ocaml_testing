open List;;

let last_two lst = 
    let lngth = length lst in
    nth lst (lngth - 1)
in 
assert (last_two (1::2::3::4::[]) = 4);
assert (last_two (1::2::3::4::2::[]) = 2);
let any_zeroes lst = exists (function x -> x = 0) lst
in 
assert (any_zeroes (1::2::3::4::0::[]) = true);
assert (any_zeroes (1::2::3::4::2::[]) = false);