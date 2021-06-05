% zero jest liczb№
isnumber(zero).
% jeїeli X jest liczb№, to X+1 takїe jest liczb№
isnumber(s(X)) :-
    isnumber(X).

add(zero,X,X) :-
    isnumber(X).
add(s(X),Y,s(Z)) :-
    add(X,Y,Z).

% 1) przypadek prosty
% 0 jest liczb№ parzyst№
even(zero).
% 2) przypadek zіozony
% Jeїeli X jest liczb№ parzyst№ to
% X+2 jest liczb№ parzyst№
even(s(s(X))) :-
    even(X).

% 1) przypaek prosty
% x = y, to x/y = 1
quotient(X,X,s(zero)) :-
    isnumber(s(zero)).
% 2) przypadek zіoїony
% Jeїeli X/Y=Q+1 oraz Y+Q=X to
% (X+1)/Y=W
quotient(X,Y,s(Q)) :-
    quotient(Z,Y,Q), add(Y,Z,X).

% 1) przypadek prosty
% jeїeli x = y, to x%y = 0
remainder(X,X,zero).
% 2) przypadek zіoїony
% jeїeli X+Y=Q oraz Q%Y=R, to X%Y=R
remainder(X,Y,R) :-
   add(X,Y,Q), remainder(Q,Y,R).
%remainder(X,Y,R) :-
%    add(R,Y,X).

% 1) 0 jest zerowym elementem(F0)
fib(zero, zero).
% 2) 1 jest pierwszym elementym(F1)
fib(s(zero), s(zero)).
%
fib(s(s(N)),X3) :-
    fib(s(N), X1), fib(N, X2), add(X1,X2,X3).