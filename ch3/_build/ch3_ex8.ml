open List;;
let rec print_list = function 
[] -> ()
| e::l -> print_int e ; print_string " " ; print_list l
in
let rec take n lst = 
    if n = 0 then [] else 
        match lst with
            | [] -> []
            | h::t -> h::(take (n-1) t)
in
assert (take 3 [1; 2; 3; 4; 5; 6;] = [1; 2; 3;]);
assert (take 3 [1; 2;] = [1; 2;]);
let take_tr (n:int) (lst:int list) = 
    let rec take_tr_h (hn:int) (hlst:int list) (hbld: int list) : (int list) =
        if hn = 0 then hbld else 
            match hlst with
                | [] -> hbld
                | h::t -> take_tr_h (hn-1) (t) (h::hbld)
    in
    rev (take_tr_h n lst [])
in
print_list (take_tr 3 [1; 2; 3; 4; 5; 6;]);
assert (take_tr 3 [1; 2; 3; 4; 5; 6;] = [1; 2; 3;]);
assert (take_tr 3 [1; 2;] = [1; 2;]);
let rec drop n lst = 
    if n = 0 then lst else 
        match lst with
            | [] -> []
            | h::t -> drop (n-1) t
in
assert (drop 3 [1; 2; 3; 4; 5; 6;] = [4; 5; 6;]);
assert (drop 3 [1; 2;] = []);
(* returns:  [from i j l] is the list containing the integers from
 *   [i] to [j], inclusive, followed by the list [l].
 * example:  [from 1 3 [0] = [1;2;3;0]] *)
let rec from i j l =
  if i > j then l
  else from i (j - 1) (j :: l)
in
(* returns:  [i -- j] is the list containing the integers from
 *   [i] to [j], inclusive.
 *) 
let (--) i j =
  from i j []
in
let longlist = 0 -- 1_000_000
in 
assert (length (drop 999_999 longlist) = 2);
assert (length (take_tr 999_999 longlist) = 999_999);