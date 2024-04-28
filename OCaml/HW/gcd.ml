(* greatest common divisor (GCD), n >= m *)

(* let rec gcd n m = 
  if m = 0 then n 
  else gcd (n - m) m;; *)
(* 
let rec gcd n m = 
  if m = 0 then n ;; *)
  
let rec gcd m n =
  match n with
  | 0 -> m
  |_ -> gcd n (m mod n);;