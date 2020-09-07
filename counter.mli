open Base

(** A collection of string frequency counts *)
type t

(** The empty set of frequency counts*)
val empty : t

(** Bump up the frequency count for given string *)
val touch : t -> string -> t

(** Converts the set of frequency counts to as association list. A string shows
    up at most once, and the counts are >= 1. *)
val to_list : t -> (string * int) list
