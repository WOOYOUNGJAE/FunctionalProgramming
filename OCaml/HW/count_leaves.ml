type btree = Leaf | Node of int * btree * btree

let t = Node (2, Node (2, Leaf, Leaf), Node (3, Leaf, Leaf)) ;;

let rec count_leaves t =
  match t with
  | Leaf -> 1
  | Node (_, left, right) ->
    count_leaves left + count_leaves right;;