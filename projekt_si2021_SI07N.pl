%Hoishyk Siarhei, Vladyslav Bahlai , Vladyslav Semak

% X jest rodzicem Y
rodzic("Alexandr", "Olya").
rodzic("Masha","Olya").
rodzic("Alexandr","Alina").
rodzic("Masha","Alina").
rodzic("Alexandr","Leha").
rodzic("Masha","Leha").
rodzic("Leha","Gleb").
rodzic("Dasha","Gleb").
rodzic("Alina","Maks").
rodzic("Leha","Maks").

% X jest menczyszna
menczyszna("Alexandr").
menczyszna("Leha").
menczyszna("Pavel").
menczyszna("Dima").

% X jest kobieta
kobieta("Olya").
kobieta("Alina").
kobieta("Masha").


% X jest ojcem Y, jeśli X jest rodzicem, i oraz jest mężczyzną 
ojciec(X,Y):-
    rodzic(X,Y),menczyszna(X).
% X jest matka Y, jezeli X jest rodzicem i rowniez jest kobieta 
matka(X,Y):-
    parant(X,Y),kobieta(X).

% X jest siostra Y jezeli oni ma wspolecznego rodzica Z, oraz jezeli X jest kobieta 
% i X nie jest rowny Y (czlowiek nie moze byc sam siebie siostre)
siostra(X,Y):-
    rodzic(Z,X),rodzic(Z,Y),kobieta(X), X\=Y.
%dziala podobnie ak siostra
braciszek(X,Y):-
    rodzic(Z,X),rodzic(Z,Y),menczyszna(X), X\=Y.