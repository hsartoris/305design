% Hayden Sartoris
% Lab 8
% Due 18 December 2017
eval(1,1).
eval(2,2).
eval(3,3).
eval(4,4).

eval(mult(A,B),Solution) :-
	eval(A, Arg1),
	eval(B, Arg2),
	Solution is Arg1 * Arg2.
eval(plus(A,B),Solution) :-
	eval(A, Arg1),
	eval(B, Arg2),
	Solution is Arg1 + Arg2.
eval(divi(A,B),Solution) :-
	eval(A, Arg1),
	eval(B, Arg2),
	not(Arg2 = 0),
	Solution is div(Arg1,Arg2).
eval(divi(_,_),_) :-
	write("No division by 0 allowed."),
	fail.
eval(minus(A,B),Solution) :-
	eval(A, Arg1),
	eval(B, Arg2),
	Solution is Arg1 - Arg2.
