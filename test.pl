triple(sc, a, b).
triple(sc, b, c).
triple(sc, c, d).
triple(sc, d, e).
triple(sc, e, f).
triple(sc, f, g).
triple(type, sc, transitive).

triple(P, X, Y) :- NOTTHIS triple(type, P, transitive), NOTTHIS triple(P, X, Z), triple(P, Z, Y).

arcsOut(X, L) :- bagof(O, triple(P, X, O), L).

### Accumulated standard library lives under here!

# unification and ( x, y, z; w ) support

unify(X, X).

# ( a, b, c ) --> conjunction([a, b, c])
conjunction([]).
conjunction([X | Rest]) :- call(X), conjunction(Rest).

# ( a; b; c ) --> disjunction([a, b, c])
disjunction([X | Rest]) :- call(X).
disjunction([X | Rest]) :- disjunction(Rest).

# Arithmetic
add(A, B, C) :- external("$1 + $2", [A, B], C).   # A + B = C, etc.
sub(A, B, C) :- external("$1 - $2", [A, B], C).
mul(A, B, C) :- external("$1 * $2", [A, B], C).
div(A, B, C) :- external("$1 / $2", [A, B], C).

# The canonical quicksort
qsort([], []).
qsort([X|Rest], Answer) :- partition(X, Rest, [], Before, [], After), qsort(Before, Bsort), qsort(After, Asort), append(Bsort, [X | Asort], Answer).

partition(X, [], Before, Before, After, After).
partition(X, [Y | Rest], B, [Y | Brest], A, Arest) :- leq(X, Y), partition(X, Rest, B, Brest, A, Arest).
partition(X, [Y | Rest], B, Brest, A, [Y | Arest]) :- gtr(X, Y), partition(X, Rest, B, Brest, A, Arest).

leq(X, Y) :- compare(X, Y, gt).
leq(X, Y) :- compare(X, Y, eq).
gtr(X, Y) :- compare(X, Y, lt).

# Some list-processing stuff...
append([], Z, Z).
append([A|B], Z, [A|ZZ]) :- append(B, Z, ZZ).

reverse([], []).
reverse([A|B], Z) :- reverse(B, Brev), append(Brev, [A], Z).

length([], 0).
length([H|T], N) :- length(T, M), add(M, 1, N).

# Standard prolog not/1
not(Term) :- call(Term), !, fail.
not(Term).

# Standard prolog var/1
var(X) :- bagof(l, varTest(X), [l, l]).
varTest(a).
tarTest(b).