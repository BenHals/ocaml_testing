type 'a tree = 
| Leaf 
| Node of 'a * 'a tree * 'a tree

let max : int -> int -> int = fun a b ->
    if a >= b then a else b

let rec depth t = 
    match t with
        | Leaf -> 0
        | Node (v, l, r) -> (max (depth l) (depth r)) + 1

let t = 
  Node(4,
    Node(2,
      Node(1,Leaf,Leaf),
      Node(3,Leaf,Leaf)
    ),
    Node(5,
      Node(6,Leaf,Leaf),
      Node(7,Leaf,Leaf)
    )
  )

let () = assert (depth t = 3)