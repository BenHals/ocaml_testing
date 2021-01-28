let cube f = f*.f*.f in
assert (cube 3.0 = 27.0);
assert (cube 2.0 = 8.0);
assert (cube 0.0 = 0.0);
let sign x = if x = 0 then 0 else if x < 0 then -1 else 1 in
assert (sign 0 = 0);
assert (sign 1 = 1);
assert (sign (-1) = -1);
assert (sign (-4) = -1);
assert (sign 4 = 1);
let pi = acos (-1.) in let circle_area r = pi *. r *. r in
assert (abs_float(circle_area 1.0 -. 3.14) < 0.1);
assert (abs_float(circle_area 5.0 -. 78.54) < 0.1);
assert (abs_float(circle_area 20.0 -. 1256.64) < 0.1);