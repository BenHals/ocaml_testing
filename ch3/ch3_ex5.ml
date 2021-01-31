open List;;

let fifth_element lst = 
    match (nth_opt lst 5) with
        | None -> 0
        | Some x -> x
in
assert (fifth_element (1::2::3::4::5::6::[]) = 6);
assert (fifth_element (1::2::3::4::[]) = 0);
let sorted_elements lst = 
    rev (sort compare lst)
in
assert (sorted_elements (1::2::3::4::5::6::[]) = 6::5::4::3::2::1::[]);
assert (sorted_elements (1::2::3::4::[]) = 4::3::2::1::[]);
assert (sorted_elements (3::2::1::4::[]) = 4::3::2::1::[]);
