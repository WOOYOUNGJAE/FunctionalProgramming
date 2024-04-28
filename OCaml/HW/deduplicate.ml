(* Write a function
deduplicate: ’a list -> ’a list
that takes a list and returns a list with all duplicates removed. The order of the
elements in the result should be the same as the order in the original list. For
example,
deduplicate [1; 1; 2; 2; 3; 3; 2; 2] = [1; 2; 3] *)

let rec 

let rec deduplicate l =
  let outList = [] in
  match l with
  | [] -> l
  | hd :: tl ->
    match tl with
    | [] -> 
    