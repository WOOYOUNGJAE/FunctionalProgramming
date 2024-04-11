(* npow x n = 1 / x^n *)

let rec pow x n = if n = 0 then 1 else (x * pow x (n - 1));;
let npow x n = 1.0 /. float_of_int(pow x n);;

print_endline(string_of_float(npow 2 3)) (*0.125*)