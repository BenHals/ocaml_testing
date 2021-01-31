let rec product l =
    match l with
        | [] -> 1
        | h::t -> h * product t