let is_before date1 date2 = 
    let (y1, m1, d1) = date1 in
        let (y2, m2, d2) = date2 in
            if y1 < y2 then true else
                if y1 = y2 && m1 <m2 then true else
                    if y1 = y2 && m1 = m2 && d1 < d2 then true else false
in 
assert (is_before (1995, 1, 1) (2000, 1, 1));
assert (is_before (2000, 1, 1) (2000, 2, 1));
assert (is_before (2000, 1, 1) (2000, 1, 2));
assert (not(is_before (2000, 1, 1) (2000, 1, 1)));