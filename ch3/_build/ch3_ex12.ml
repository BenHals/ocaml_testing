open List;;
let print_int_list' lst = 
  List.iter (fun x -> print_endline (string_of_int x)) lst
in
print_int_list' [1; 2; 3]