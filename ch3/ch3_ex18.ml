let is_before date1 date2 = 
    let (y1, m1, d1) = date1 in
        let (y2, m2, d2) = date2 in
            if y1 < y2 then true else
                if y1 = y2 && m1 <m2 then true else
                    if y1 = y2 && m1 = m2 && d1 < d2 then true else false
in 
let rec earliest_date date_lst = 
    match date_lst with
        | [] -> None
        | h::t -> let earliest_t = earliest_date t in
                    match earliest_t with
                    | None -> Some h
                    | Some et -> if is_before h et then Some h else Some et
in
assert (earliest_date [(1995, 1, 1); (2000, 1, 1)] = Some (1995, 1, 1));
assert (earliest_date [(1995, 1, 1); (2000, 1, 1); (1995, 0, 1)] = Some (1995, 0, 1));
assert (earliest_date [] = None);