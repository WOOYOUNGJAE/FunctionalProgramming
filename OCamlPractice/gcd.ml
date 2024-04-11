(* greatest common divisor (GCD), n >= m *)

(* let rec gcd n m = 
  if m = 0 then n 
  else gcd (n - m) m;; *)

let rec gcd n m = 
  if m = 0 then n 
  
(* print_endline(string_of_int(gcd 4 6)) *)