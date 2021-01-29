let rec product l =
    match l with
        | [] -> 1
        | h::t -> h * product t
in
assert (product (1::2::3::[]) = 6);
assert (product (1::2::3::4::[]) = 24);
let rec product2 = function 
    | [] -> 1
    | h::t -> h * product t
in
assert (product2 (1::2::3::[]) = 6);
assert (product2 (1::2::3::4::[]) = 24);