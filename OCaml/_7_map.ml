let rec map inFunc l = 
  match l with
  | [] -> []
  | head :: tail -> (inFunc head) :: (map inFunc tail)

let increase_all l = map (fun x -> x + 1) l