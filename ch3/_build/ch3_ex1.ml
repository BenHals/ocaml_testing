let rec print_list = function 
[] -> ()
| e::l -> print_int e ; print_string " " ; print_list l
in
let ex1_1 = [1; 2; 3; 4; 5;] in print_list ex1_1;
let ex1_2 = 1::2::3::4::5::[] in print_list ex1_2;
let ex1_2 = [1] @ [2; 3; 4;] @ [5] in print_list ex1_2;
