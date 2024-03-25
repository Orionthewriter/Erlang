-module(memes).
-export([fib/1]).
-export([test/0]).

% Fibonacci function
fib(0) -> 0;
fib(1) -> 1;
fib(N) when N > 1 ->
    fib(N-1) + fib(N-2).

% Format and display output to the screen
print_fibonacci(N) when is_integer(N), N >= 0 ->
    FibSeq = [fib(I) || I <- lists:seq(0, N)],
    lists:foreach(fun(X) -> io:format("~p ", [X]) end, FibSeq),
    io:format("~n").

% Test the function
test() ->
    print_fibonacci(10).
