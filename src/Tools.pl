% Usa uma regra adicional que mantém a lista original, 
% a lista de saída e uma intermediaria

% 

list_unique(L, U) :- list_unique_1(L, [], U).

% Uma lista vazia com elementos únicos é uma lista vazia
list_unique_1([], _, []).
% Separa o primeiro elemento da lista para comparar
list_unique_1([X|Xs], So_far, Us) :- list_unique_2(X, Xs, So_far, Us).

% Adiciona um elemento diferente à lista de únicos
list_unique_2(X, Xs, So_far, [X|Us]) :-
    maplist(dif(X), So_far),
    list_unique_1(Xs, [X|So_far], Us).

% Ignora um elemento já adicionado à lista
list_unique_2(X, Xs, So_far, Us) :-
    memberchk(X, So_far),
    list_unique_1(Xs, So_far, Us).