let rec print_string_list lst = match lst with
| [] -> ()
| h :: t ->
    print_int h;
    print_string " ";
    print_string_list t;;


let append list0 list1 =
  list0 @ list1;; 

print_string_list(append [1;2;3;4] [5;6;7;8]);;
