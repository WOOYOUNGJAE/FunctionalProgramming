let rec length l =
  match l with
  | [] -> 0
  | hd::tl -> 1 + length tl;;

let myList = [3; 4; 7; 11];;
print_endline(string_of_int(length myList));; (*4*)