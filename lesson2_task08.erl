-module(lesson2_task08).
-export([compress/1]).

compress([]) -> [];
compress([H|T]) -> compress(T, H, [H]).

compress([], _, Acc) -> lists:reverse(Acc);
compress([H|T], Prev, Acc) when H == Prev -> compress(T, Prev, Acc);
compress([H|T], _, Acc) -> compress(T, H, [H|Acc]).
