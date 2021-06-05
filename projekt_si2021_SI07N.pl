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

