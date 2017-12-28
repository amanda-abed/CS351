grandparent(A,B) :- parent(A, X), parent(X, B).
ancestor(A,B) :- parent(A,B).
ancestor(A,B) :- parent(A, X), ancestor(X,B).
descendant(A,B) :- ancestor(B,A).
sibling(A,B) :- parent(X, A), parent(X,B), A\=B.
child(A,B) :- parent(B,A).
grandchild(A,B) :- grandparent(B,A).
father(A,B) :- male(A), parent(A,B).
mother(A,B) :- female(A), parent(A,B).
grandmother(A,B) :- female(A), grandparent(A,B).
grandfather(A,B) :- male(A), grandparent(A,B).
son(A,B) :- male(A), parent(B,A). 
daughter(A,B) :- female(A), parent(B, A).
granddaughter(A,B) :- female(A), grandparent(B,A).
grandson(A,B) :- male(A), grandparent(B,A).
sister(A,B) :- female(A), parent(X, A), parent(X,B), A\=B.
brother(A,B) :- male(A), parent(X,A), parent(X,B), A\=B.
