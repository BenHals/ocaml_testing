type quad = I | II | III | IV

type sign = Neg | Zero | Pos

let sign (x:int) : sign =
    if x > 0 then Pos else
        if x < 0 then Neg else Zero

let quadrant : int*int -> quad option = fun (x,y) ->
    let pair_sign = function
        | (h, t) -> (sign h, sign t) in
    let coord_sign = pair_sign (x, y) in
  match coord_sign with
    | (Pos, Pos) -> Some I
    | (Neg, Pos) -> Some II
    | (Neg, Neg) -> Some III
    | (Pos, Neg) -> Some IV
    | (Zero, Zero) | (Zero, Pos) | (Zero, Neg) | (Pos, Zero) | (Neg, Zero) -> None

let () = assert (quadrant (1, 1) = Some I)
let () = print_string "test"
let x = 1
let y = 2