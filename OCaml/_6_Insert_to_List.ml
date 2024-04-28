(* Insert to Sorted List *)
let rec print_string_list lst = match lst with
| [] -> ()
| h :: t ->
    print_int h;
    print_string " ";
    print_string_list t;;

let rec insert el l =
  match l with
  |[] -> [el]
  |h::t ->
    if (el <= h) then el :: l
    else h :: insert el t;;

print_string_list(insert 3 [1;2;5;6;7])