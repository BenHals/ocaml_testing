(* insert a binding from key k to value v in association list d *)
let insert k v d = (k,v)::d in

(* find the value v to which key k is bound, if any, in the assocation list *)
let rec lookup k = function
| [] -> None
| (k',v)::t -> if k=k' then Some v else lookup k t in

let extract o = 
    match o with 
    | Some i -> i 
    | None -> "" in

let assoc_list = [] in

let assoc_list = insert 1 "one" assoc_list in
let assoc_list = insert 2 "two" assoc_list in
let assoc_list = insert 3 "three" assoc_list in
print_string (extract (lookup 2 assoc_list));
print_string (extract (lookup 1 assoc_list));
print_string (extract (lookup 4 assoc_list));