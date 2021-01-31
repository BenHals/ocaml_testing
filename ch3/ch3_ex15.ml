let safe_hd = function
    | [] -> None
    | x::t -> Some x
in 
assert (safe_hd [] = None);
assert (safe_hd [1;] = Some 1);
assert (safe_hd [1; 2;] = Some 1);
let rec safe_tl = function
    | [] -> None
    | t::[] -> Some t
    | h::t -> safe_tl t
in 
assert (safe_tl [] = None);
assert (safe_tl [1;] = Some 1);
assert (safe_tl [1; 2;] = Some 2);
assert (safe_tl [1; 2; 3;] = Some 3)