(* if List holds any of Func *)
(* lany [1; 2; 3] (fun x -> x mod 2 = 0) = true
lany [1; 2; 3] (fun x -> x < 0) = false. *)

let rec lany l inFun =
  match l with
  | [] -> false
  | hd :: tl -> (inFun hd) || (lany tl inFun);;