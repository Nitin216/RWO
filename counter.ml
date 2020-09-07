open Base

type t = (string, int, String.comparator_witness) Map.t

let empty = Map.empty (module String)

let to_list x = Map.to_alist t

let touch t s = 
  let count = 
    match Match.find t s with
    | None -> 0
    | Some x -> x
  in
  Map.set t ~keys:s ~data:(count + 1)
