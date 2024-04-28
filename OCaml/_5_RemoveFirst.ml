let rec print_string_list lst = match lst with
| [] -> ()
| h :: t ->
    print_int h;
    print_string " ";
    print_string_list t;;

let rec remove_first el l = 
  match l with
  | [] -> []
  | h::t -> if (el = h) then t
            else h::(remove_first el t);;

print_string_list(remove_first 5 [3;5;7;9;11]);;