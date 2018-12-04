-module(solution_a).
-author("Rob").

%% API
-export([solve/0]).

solve() ->
  lists:sum(to_list_of_ints(read_file("input.txt"))).

read_file(File) ->
  {ok, Binary} = file:read_file(File),
  Binary.

to_integer(String) ->
  {Value, Rest} = string:to_integer(String),
  Value.

to_list_of_ints(Strings) ->
  List = re:split(Strings, "\n"),
  lists:map(fun(Value) -> to_integer(Value) end, List).