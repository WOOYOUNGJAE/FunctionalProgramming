type btree = Leaf | Node of int * btree * btree
let t = Node (2, Node (2, Leaf, Leaf), Node (3, Leaf, Leaf)) ;;
(* insert_btree 1 t = 
Node (2, Node (2, Node (1, Leaf, Leaf), Leaf), Node (3, Leaf, Leaf)) *)

let rec insert_btree inK inT =
  match inT with
  | Leaf -> Node(inK, Leaf, Leaf)
  | Node (k, left, right) ->
      if inK <= k then
        Node(k, insert_btree inK left, right)
      else
        Node(k, left, insert_btree inK right)