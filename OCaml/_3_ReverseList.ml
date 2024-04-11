let rec print_string_list lst = match lst with
| [] -> ()
| h :: t ->
    print_int h;
    print_string " ";
    print_string_list t;;

let rec reverse_list l = 
  match l with 
  |[] -> []
  |h::t -> (reverse_list t) @ [h];;

print_string_list (reverse_list([1;2;3;4;5]));; (*5 4 3 2 1*)