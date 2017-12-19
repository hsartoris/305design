% Hayden Sartoris
% Lab 8
% Due 18 December 2017
resources([1,2,3,4,plus,mult,divi,divi,minus,minus]).

genExp(In, 1, Out) :-
	getSymbol(In, 1, Out).
genExp(In, 2, Out) :-
	getSymbol(In, 2, Out).
genExp(In, 3, Out) :-
	getSymbol(In, 3, Out).
genExp(In, 4, Out) :-
	getSymbol(In, 4, Out).

genExp(In, mult(E1,E2), Out) :-
	getSymbol(In, mult, L1),
	genExp(L1, E1, L2),
	genExp(L2, E2, Out).
genExp(In, divi(E1,E2), Out) :-
	getSymbol(In, divi, L1),
	genExp(L1, E1, L2),
	genExp(L2, E2, Out).
genExp(In, plus(E1,E2), Out) :-
	getSymbol(In, plus, L1),
	genExp(L1, E1, L2),
	genExp(L2, E2, Out).
genExp(In, minus(E1,E2), Out) :-
	getSymbol(In, minus, L1),
	genExp(L1, E1, L2),
	genExp(L2, E2, Out).

getSymbol([H|In], H, In).

getSymbol([H|In], Symb, [H|Out]) :- getSymbol(In, Symb, Out).


permute(tuple(E, X)) :-
	resources(L),
	genExp(L,E,X),
	eval(E,8.0).

unique([tuple(E,X)|Tail], Found, [E|Unique]) :-
	not(member(X, Found)),
	write(E),nl,
	unique(Tail, [X|Found], Unique).
unique([tuple(_,X)|Tail], Found, Unique) :-
	unique(Tail, [X|Found], Unique).
unique([], _, []).

solutions(L) :-
	setof(tuple(E,X), permute(tuple(E,X)), Set),
	unique(Set, [], L), !.
	

eval(1,1.0).
eval(2,2.0).
eval(3,3.0).
eval(4,4.0).
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
	not(Arg2 = 0.0),
	Solution is Arg1 / Arg2.
eval(minus(A,B),Solution) :-
	eval(A, Arg1),
	eval(B, Arg2),
	Solution is Arg1 - Arg2.

	
