let rec ex4_1 lst =
    match lst with
        | [] -> false
        | "bigred"::t -> true
        | h::t -> false
in
assert (not (ex4_1 ([])));
assert (not (ex4_1 ("1"::[])));
assert (not (ex4_1 ("1"::["bigred"])));
assert (ex4_1 ("bigred"::"1"::["bigred"]));
let rec ex4_1_v2 = function
        | [] -> false
        | "bigred"::t -> true
        | h::t -> false
in
assert (not (ex4_1_v2 ([])));
assert (not (ex4_1_v2 ("1"::[])));
assert (not (ex4_1_v2 ("1"::["bigred"])));
assert (ex4_1_v2 ("bigred"::"1"::["bigred"]));
let ex4_2 lst =
    match lst with
        | [] -> false
        | x::y::[] -> true
        | x::y::i::j::[] -> true
        | h::t -> false
in
assert (not (ex4_2 ([])));
assert (not (ex4_2 ("1"::[])));
assert (ex4_2 ("1"::["bigred"]));
assert (not (ex4_2 ("bigred"::"1"::["bigred"])));
assert (ex4_2 ("1"::"2"::"3"::["bigred"]));
let ex4_2 lst =
    match lst with
        | [] -> false
        | x::[] -> false
        | x::y::t -> x = y
in
assert (not (ex4_2 ([])));
assert (not (ex4_2 ("1"::[])));
assert (ex4_2 ("1"::"1"::["bigred"]));
assert (not (ex4_2 ("bigred"::"1"::["bigred"])));
assert (ex4_2 ("1"::"1"::"2"::"3"::["bigred"]));