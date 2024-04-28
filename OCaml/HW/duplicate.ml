(* Write a function
duplicate: ’a list -> ’a list
that duplicates the elements of a list. For example,
duplicate [1; 2; 3] = [1; 1; 2; 2; 3; 3] *)

let rec duplicate l =
  match l with
  | [] -> l
  | hd :: tl -> [hd; hd] @ duplicate tl