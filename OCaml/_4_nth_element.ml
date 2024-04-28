let rec nth l n =
  match l with
  | [] -> raise (Failure "List is too short")
  | h::t -> if n = 0 then h else nth t (n - 1);;


print_int (nth [1;2;3;4;6;7] 5);;