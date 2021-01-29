let rec concat l =
    match l with
        | [] -> ""
        | h::t -> h ^ concat t
in
assert (concat ("H"::"E"::"L"::[]) = "HEL");
assert (concat ("H"::"E"::"L"::"L"::"O"::[]) = "HELLO");