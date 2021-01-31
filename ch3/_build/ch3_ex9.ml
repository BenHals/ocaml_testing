let is_unimodal lst =
    let rec decreasing lst =
        match lst with
            | [] -> true
            | h:: [] -> true
            | i::j::t -> if i =j || j < i then
                            decreasing (j::t)
                        else
                            false
    in
    let rec increasing lst =
        match lst with
            | [] -> true
            | h::[] -> true
            | i::j::t -> if i = j || j > i then 
                            increasing (j::t)
                        else decreasing (j::t)
    in
    increasing lst
in
assert (is_unimodal [1; 2; 3; 4; 4; 3; 2; 1]);
assert (is_unimodal [1; 2; 3; 4; 4;]);
assert (is_unimodal [1; 1; 1;]);
assert (is_unimodal []);
assert (is_unimodal [4; 5; 4; 3; 2; 1]);
assert (is_unimodal [5; 4; 3; 2; 1]);
assert (not (is_unimodal [5; 4; 3; 2; 1; 2;]));
assert (not (is_unimodal [4; 5; 4; 3; 2; 1; 2;]));