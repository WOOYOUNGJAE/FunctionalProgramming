(* all powerset
powerset: ’a list -> ’a list list
[[]; [1]; [2]; [3]; [1; 2]; [1; 3]; [2; 3]; [1; 2; 3]] *)

let rec powerset l =
  match l with
  | [] -> 