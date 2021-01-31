let rec print_int_list = function 
    [] -> ()
    | e::l -> print_int e ; print_endline "" ; print_int_list l
in print_int_list [1; 2; 3]