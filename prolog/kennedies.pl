% prolog file 
parent(joeSr, joeJr).
parent(joeSr, jfk).
parent(joeSr, rfk).
parent(joeSr, kathleen).
parent(jfk, john).
parent(jfk, caroline).
parent(kathleen, willy).
parent(rfk, joeIII).
ancestor(Person, Person).
ancestor(Ancestor, Descendant) :- 
	parent(Ancestor, Middle),
	ancestor(Middle, Descendant).

