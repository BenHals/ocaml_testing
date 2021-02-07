type 'a tree = 
| Leaf 
| Node of 'a * 'a tree * 'a tree

let rec same_shape a b = 
    match (a, b) with
    | (Leaf, Leaf) -> true
    | (Node (_, _, _), Leaf) | (Leaf, Node (_, _, _)) -> false
    | (Node (av, al, ar), Node (bv, bl, br)) -> (same_shape al bl) && (same_shape ar br)
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
let t2 = 
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
let t3 = 
  Node(4,
    Node(2,
      Node(1,Leaf,Leaf),
      Leaf
    ),
    Node(5,
      Node(6,Leaf,Leaf),
      Node(7,Leaf,Leaf)
    )
  )
let () = assert (same_shape t t2)
let () = assert (not (same_shape t t3))