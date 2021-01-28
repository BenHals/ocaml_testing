let divide ~numerator ~denomenator = numerator /. denomenator in
assert (abs_float(divide ~numerator:5.0 ~denomenator:2.5 -. 2.0) < 0.01);
let divide2 ~numerator:a ~denomenator:b = a /. b in
assert (abs_float(divide2 ~numerator:5.0 ~denomenator:2.5 -. 2.0) < 0.01);
let divide3 ~numerator:(a:float) ~denomenator:(b:float) = a /. b in
assert (abs_float(divide3 ~numerator:5.0 ~denomenator:2.5 -. 2.0) < 0.01);
let divide3 ~numerator:(a:float) ~denomenator:(b:float) = a /. b in
assert (abs_float(divide3 (~numerator:5.0) (~denomenator:2.5) -. 2.0) < 0.01);