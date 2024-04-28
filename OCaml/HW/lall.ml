(* Write a function
lall: ’a list -> (’a -> bool) -> bool
such that
lall l p = true (if p holds for all elements of l)
false (otherwise)
For example,
lall [1; 2; 3] (fun x -> x > 0) = true
and
lall [1; 2; 3] (fun x -> x > 1) = false. *)

let rec lall l inFun =
  match l with
  | [] -> true
  | hd :: tl -> (inFun hd) && (lall tl inFun);;