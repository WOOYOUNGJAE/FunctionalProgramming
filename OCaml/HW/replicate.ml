(* Write a function
replicate: ’a list -> int -> ’a list
that replicates the elements of a list a given number n(≥ 0) of times. If n is 0,
the function should return an empty list. For example,
replicate [1; 2; 3] 3 = [1; 1; 1; 2; 2; 2; 3; 3; 3]. *)

let rec replicate l num=
  let rec newHead_with_same_element l num =
    if num == 1
      then l
  else
    match l with
    | hd :: tl -> hd :: newHead_with_same_element l (num-1) in
  match l with
  | [] -> l
  | hd :: tl -> ((newHead_with_same_element [hd] num) @ (replicate tl num))