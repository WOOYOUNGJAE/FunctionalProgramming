let twoMin a b = 
  if (a >= b) then b else a ;;

let rec min l =
  match l with
  | [] -> 0
  |h::t -> if t = [] then h
  else twoMin h (min t)
    
  