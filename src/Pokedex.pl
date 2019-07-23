%%% Tipos
:- consult('Types.pl').
%%% Pokemons
:- consult('Pokemons.pl').
%%% Stats
:- consult('Stats.pl').
%%% Moves
:- consult('Moves.pl').


%%% Regras
name(NB, NM) :- 
    pokemon(NB, NM, _, _, _, _).

number(NM, NB) :- 
    pokemon(NB, NM, _, _, _, _).

types(NM, T1, T2) :-
    pokemon(_, NM, T1, T2, _, _).

ofType(T, N) :- 
    pokemon(_, N, T, _, _, _); pokemon(_, N, _, T, _, _).

ofTypes(T1, T2, N) :- 
    pokemon(_, N, T1, T2, _, _); pokemon(_, N, T2, T1, _, _).

moveDamage(M, D) :- 
    move(M, _, _, _, D).

moveType(M, T) :- 
    move(M, T, _, _, _).

movePP(M, PP) :-
    move(M, _, _, PP, _).

power(M, P) :- 
    move(M, _, P, _, _).

gen(NM, G) :-
    pokemon(_, NM, _, _, G, _).

from(NB, FROM) :- 
    pokemon(NB, _, _, _, _, FROM).

from(NM, FROM) :- 
    pokemon(_, NM, _, _, _, FROM).

evolution(X, Y) :-
    pokemon(N, X, _, _, _, _),
    pokemon(_, Y, _, _, _, N).

preevolution(X, Y) :-
    pokemon(_, X, _, _, _, N),
    pokemon(N, Y, _, _, _, _).

antecessor(X, Y) :- evolution(X, Y).
antecessor(X, Y) :- evolution(X, Z), antecessor(Z, Y).

chain(X, C) :- 
    name(NB, X),
    findall(N, 
        (pokemon(NB, N, _, _, _, _); antecessor(X, N)),
        R),
    list_unique(R, C).

pokemons(L) :-
    findall(p(NB, NM),
        pokemon(NB, NM, _, _, _, _),
        L).

dex(NM) :-
    pokemon(N, NM, T1, T2, G, _),
    stat(N, HP, ATK, DEF, SPE, SPA, SPD),
    weak(NM, W),
    strong(NM, S),
    chain(NM, C),
    write('Number: '), write(N), write('\n'),
    write('Name: '), write(NM), write('\n'),
    write('Types: '), write(T1), write(', '), write(T2), write('\n'),
    write('Generation: '), write(G), write('\n'),
    write('Stats: '), 
        write('HP = '), write(HP), write(', '),
        write('ATK = '), write(ATK), write(', '),
        write('DEF = '), write(DEF), write(', '),
        write('SPE = '), write(SPE), write(', '),
        write('SPA = '), write(SPA), write(', '),
        write('SPD = '), write(SPD), write('\n'),
    write('Weak against: '), write(W), write('\n'),
    write('Strong against: '), write(S), write('\n'),
    write('Evolution chain: '), write(C), write('\n').


names(L) :- 
    findall(N,
        pokemon(_, N, _, _, _, _),
        L).

stats(X, S) :-
    pokemon(N, X, _, _, _, _),
    stat(N, HP, ATK, DEF, SPE, SPA, SPD),
    S = [HP, ATK, DEF, SPE, SPA, SPD].

statsDet(X, S) :-
    pokemon(N, X, _, _, _, _),
    stat(N, HP, ATK, DEF, SPE, SPA, SPD),
    S = [hp=HP, atack=ATK, defense=DEF, speed=SPE, spAtk=SPA, spDef=SPD].

stats(X, LV, S) :-
    pokemon(N, X, _, _, _, _),
    stat(N, HP, ATK, DEF, SPE, SPA, SPD),
    NHP is HP + floor((HP*LV)/50),
    NATK is ATK + floor((ATK*LV)/50),
    NDEF is DEF + floor((DEF*LV)/50),
    NSPE is SPE + floor((SPE*LV)/50),
    NSPA is SPA + floor((SPA*LV)/50),
    NSPD is SPD + floor((SPD*LV)/50),
    S = [NHP, NATK, NDEF, NSPE, NSPA, NSPD].

statsDet(X, LV, S) :-
    pokemon(N, X, _, _, _, _),
    stat(N, HP, ATK, DEF, SPE, SPA, SPD),
    NHP is HP + floor((HP*LV)/50),
    NATK is ATK + floor((ATK*LV)/50),
    NDEF is DEF + floor((DEF*LV)/50),
    NSPE is SPE + floor((SPE*LV)/50),
    NSPA is SPA + floor((SPA*LV)/50),
    NSPD is SPD + floor((SPD*LV)/50),
    S = [hp=NHP, atack=NATK, defense=NDEF, speed=NSPE, spAtk=NSPA, spDef=NSPD].

stab(X, T, STAB) :-
    pokemon(_, X, T1, T2, _, _),
    (T == T1; T == T2),
    STAB is 1.5.

stab(X, T, STAB) :-
    pokemon(_, X, T1, T2, _, _),
    T \== T1,
    T \== T2,
    STAB is 1.

effectiveness(X, T, [D1, D2]) :-
    pokemon(_, X, T1, T2, _, _),
    damage(T1, T, D1),
    damage(T2, T, D2).

weakness(X, T, [D1, D2]) :-
    pokemon(_, X, T1, T2, _, _),
    damage(T, T1, D1),
    damage(T, T2, D2).

strong(X, L) :-
    pokemon(_, X, _, _, _, _),
    findall(T,
        (effectiveness(X, T, [D1, D2]), D is D1 * D2, D > 1.0),
        R),
    sort(R, L).

normal(X, L) :- 
    pokemon(_, X, _, _, _, _),
    findall(T,
        (weakness(X, T, [D1, D2]), D is D1 * D2, D =< 1.0, D >= 1.0),
        R),
    sort(R, L).

resistant(X, L) :- 
    pokemon(_, X, _, _, _, _),
    findall(T,
        (weakness(X, T, [D1, D2]), D is D1 * D2, D < 1.0),
        R),
    sort(R, L).

weak(X, L) :-
    pokemon(_, X, _, _, _, _),
    findall(T,
        (weakness(X, T, [D1, D2]), D is D1 * D2, D > 1.0),
        R),
    sort(R, L).

harm(X, L, MV, Y, DMIN, DMAX) :-
    move(MV, TM, FM, _, physical),
    pokemon(NX, X, _, _, _, _), pokemon(NY, Y, _, _, _, _),
    stat(NX, _, ATK, _, _, _, _), stat(NY, _, _, DEF, _, _, _),
    weakness(Y, TM, [W1, W2]), W is W1 * W2,
    stab(X, TM, STAB),
    TMP is ((( 2.0 * L/5.0) + 2.0) * ATK * FM/DEF ),
    R1 is ((TMP/50.0) + 2.0) * STAB * W * (80.0 / 100),
    R2 is ((TMP/50.0) + 2.0) * STAB * W * (100.0 / 100),
    DMIN is floor(R1), DMAX is floor(R2).

harm(X, L, MV, Y, DMIN, DMAX) :-
    move(MV, TM, FM, _, special),
    pokemon(NX, X, _, _, _, _), pokemon(NY, Y, _, _, _, _),
    stat(NX, _, _, _, _, SATK, _), stat(NY, _, _, _, _, SDED, _),
    weakness(Y, TM, [W1, W2]), W is W1 * W2,
    stab(X, TM, STAB),
    TMP is ((( 2.0 * L/5.0) + 2.0) * SATK * FM/SDED ),
    R1 is ((TMP/50.0) + 2.0) * STAB * W * (80.0 / 100),
    R2 is ((TMP/50.0) + 2.0) * STAB * W * (100.0 / 100),
    DMIN is floor(R1), DMAX is floor(R2).

harm(X, L, MV, Y, DMIN, DMAX) :-
    move(MV, _, _, _, none),
    pokemon(_, X, _, _, _, _), pokemon(_, Y, _, _, _, _),
    DMIN is 0*L, DMAX is 0*L.

