let rec fold inFunc l a = 
  match l with
  | [] -> a
  | head :: tail -> inFunc head (fold inFunc tail a)

