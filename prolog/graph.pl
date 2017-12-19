% prolog

edge(a, b).
edge(a, c).
edge(c, d).
edge(d, e).
edge(e, f).

path(Node, Node).
path(Source, Sink) :-
	edge(Source, Intermediary),
	path(Intermediary, Sink).

connected(Node, Node).
connected(Start, End) :-
	path(Start, Common),
	path(End, Common).
connected(Start, End) :-
	path(Common, Start),
	path(Common, End).
