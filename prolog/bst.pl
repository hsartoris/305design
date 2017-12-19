%prolog

node(13, node(5, empty, node(7, empty,empty)),
	node(18, node(14, empty, empty), node(23, empty empty))).


member(K, node(K,_,_)).
member(K, node(N,S,_)):-
	K < N, !,
	member(K,S).
member(K, node(N,_,T)):-
	K > N,
	member(K,T).

insert(K, empty, node(Number, empty, empty)).
insert(K, node(N, L, R), node(N, L2, R):-
	K < N,
	insert(K, L, L2).

insert(K, node(N, L, R), node(N, L, R2):-
	K > N,
	insert(K, R, R2).

