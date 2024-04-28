(* A X B = [(a0b0);(a0b1);(a0b2);(a1b0);, ...] *)
(* cartesian: ’a list -> ’b list -> (’a * ’b) list *)

let append_tuple_element outList srcList e =
  match srcList with
  | [] -> outList
  | hd :: tl -> outList @ [(hd, e)]


let rec rec_pair_cartesian outList list0 list1 = 
  match list0 with
  | [] -> outList
  | _hd :: _tl -> 
    match list1 with
    | [] -> outList
    | __hd :: __tl -> append_tuple_element outList _hd __hd;;
  

let cartesian list0 list1 = 
  let outList = [] in
  rec_pair_cartesian outList list0 list1;;