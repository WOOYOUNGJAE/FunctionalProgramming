(* count oddnode : btree -> int *)
type btree = Leaf | Node of int * btree * btree
let t = Node (1, Node (2, Leaf, Leaf), Node (3, Leaf, Leaf)) ;; (*4 leaves*)

let rec count_oddnode t =
  match t with
  | Leaf -> 0
  | Node(k, left, right) -> 
    if k mod 2 == 1
      then count_oddnode left + count_oddnode right + 1 
    else 
      count_oddnode left + count_oddnode right;;