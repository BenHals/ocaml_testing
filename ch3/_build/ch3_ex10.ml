open List;;
let rec print_int_list = function 
[] -> ()
| e::l -> print_int e ; print_string " " ; print_int_list l
and print_list_list = function 
[] -> ()
| e::l -> print_int_list e ; print_string "| " ; print_list_list l
in
let rec powerset lst =
    let rec elem_concat lst x =
    match lst with
        | [] -> [[x]]
        | h::t -> (x::h)::(elem_concat t x)
    in
    match lst with
        | [] -> []
        | h::t -> (powerset t) @ (elem_concat (powerset t) h)
in 
print_list_list (powerset [1; 2; 3;])
(* assert (powerset [1; 2; 3] = [[1]; [2]; [3]; [1; 2;]; [1; 2; 3;]; [1; 3;]; [2; 3]]) *)
