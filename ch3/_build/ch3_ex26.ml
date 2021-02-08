let list_max lst =
    let rec element_gt lst x =
        match lst with
        | [] -> x
        | h::t -> let currect_max = max h x in (element_gt t currect_max)
    in
    match lst with
    | [] -> raise (Failure "list_max")
    | h::t -> element_gt t h

let () = assert (list_max [1; 2; 3; 4] = 4)
let () = assert (list_max [5; 2; 3; 4] = 5)
let () = assert (list_max [5] = 5)
let () = try 
            list_max []
            raise (Assert_failure ("assert_fail", 1, 1))
        with Failure e -> ()