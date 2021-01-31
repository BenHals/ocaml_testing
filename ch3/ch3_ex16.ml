type poketype = Normal | Fire | Water;;
type pokemon = {name:string; hp:int; ptype:poketype};;
let c = {name = "charizard"; hp = 78; ptype = Fire};;
let s = {name = "squirtle"; hp = 44; ptype = Water};;
let b = {name = "b"; hp = 100; ptype = Water};;
let max_hp lst =
    let rec max_h lst m_hp m_opt =
        match lst with
            | [] -> m_opt
            | h::t -> if h.hp > m_hp then max_h t h.hp (Some h) else max_h t m_hp m_opt
    in
    max_h lst (-1) (None)
in
assert (max_hp [c; s] = Some c);
assert (max_hp [s; c; s] = Some c);
assert (max_hp [s; c; b; s] = Some b);
assert (max_hp [] = None)