let quadrant_when = function
    | (x, y) when x > 0 && y > 0 -> Some `I
    | (x, y) when x < 0 && y > 0 -> Some `II
    | (x, y) when x < 0 && y < 0 -> Some `III
    | (x, y) when x > 0 && y < 0 -> Some `IV
    | (x, y) -> None

let print_quad = function
    | Some `I -> print_string "I:"
    | Some `II -> print_string "II:"
    | Some `III -> print_string "III:"
    | Some `IV -> print_string "IV:"
    | None -> print_string ":"

let () = assert (quadrant_when (1, 5) = Some `I)
let () = assert (quadrant_when (-2, 5) = Some `II)
let () = assert (quadrant_when (-2, -3) = Some `III)
let () = assert (quadrant_when (4, -3) = Some `IV)
let () = assert (quadrant_when (0, -3) = None)
let () = print_quad (quadrant_when (1, 5))
let () = assert (quadrant_when (0, 0) = None)
let () = assert (quadrant_when (1, 0) = None)