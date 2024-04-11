let rec print_string_list lst = match lst with
| [] -> ()
| h :: t ->
    print_int h;
    print_string " ";
    print_string_list t;;

print_string_list ([2;3]);;