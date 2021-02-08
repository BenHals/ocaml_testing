type 'a tree = 
| Leaf 
| Node of 'a * 'a tree * 'a tree

type 'a treeData =
| Empty
| NotBST
| TData of 'a * 'a

let is_bst t =
    let rec get_tree_data t =
        match t with
        | Leaf -> Empty
        | Node (v, l, r) -> let l_data = get_tree_data l in let r_data = get_tree_data r in
            match (l_data, r_data) with
            | (Empty, Empty) -> TData (v, v)
            | (_, NotBST) -> NotBST
            | (NotBST, _) -> NotBST
            | (TData (lmin, lmax), TData (rmin, rmax)) -> 
                if v < lmax || v > rmin then NotBST else TData (lmin, rmax)
            | (TData (lmin, lmax), Empty) -> 
                if v < lmax then NotBST else TData (lmin, v)
            | (Empty, TData (rmin, rmax)) -> 
                if v > rmin then NotBST else TData (v, rmax)
    in
    let tree_data = get_tree_data t in
    match tree_data with
    | Empty -> true
    | NotBST -> false
    | TData (lmin, lmax) -> true

let t1_bst = 
  Node(4,
    Node(2,
      Node(1,Leaf,Leaf),
      Node(3,Leaf,Leaf)
    ),
    Node(6,
      Node(5,Leaf,Leaf),
      Node(7,Leaf,Leaf)
    )
  )
let t2_bst = 
  Node(4,
    Node(2,
      Leaf,
      Node(3,Leaf,Leaf)
    ),
    Node(6,
      Node(5,Leaf,Leaf),
      Leaf
    )
  )
let t3_bst = 
  Node(4,
    Leaf,
    Node(6,
      Node(5,Leaf,Leaf),
      Leaf
    )
  )
let t4_bst = 
  Node(4,
    Node(3,
      Node(1,Leaf,Leaf),
      Leaf
    ),
    Leaf
  )
let t1_nobst = 
  Node(4,
    Node(2,
      Node(1,Leaf,Leaf),
      Node(8,Leaf,Leaf)
    ),
    Node(5,
      Node(6,Leaf,Leaf),
      Node(7,Leaf,Leaf)
    )
  )
let t2_nobst = 
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
let t3_nobst = 
  Node(4,
    Leaf,
    Node(5,
      Node(6,Leaf,Leaf),
      Leaf
    )
  )
let t4_nobst = 
  Node(4,
    Node(5,
      Node(3,Leaf,Leaf),
      Leaf
    ),
    Leaf
  )

let () = assert (is_bst t1_bst)
let () = assert (is_bst t2_bst)
let () = assert (is_bst t3_bst)
let () = assert (is_bst t4_bst)
let () = assert (not (is_bst t1_nobst))
let () = assert (not (is_bst t2_nobst))
let () = assert (not (is_bst t3_nobst))
let () = assert (not (is_bst t4_nobst))