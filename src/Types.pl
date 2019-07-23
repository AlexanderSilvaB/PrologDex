%%% Tools
:- consult('Tools.pl').

%%% Efetividade
% damage(type1, type2, effectiveness)
damage(fighting,  normal,     2).
damage(ghost,     normal,     0).
damage(normal,    normal,     1).
damage(fire,      normal,     1).
damage(water,     normal,     1).
damage(electric,  normal,     1).
damage(grass,     normal,     1).
damage(ice,       normal,     1).
damage(poison,    normal,     1).
damage(ground,    normal,     1).
damage(flying,    normal,     1).
damage(psyhic,    normal,     1).
damage(bug,       normal,     1).
damage(rock,      normal,     1).
damage(dragon,    normal,     1).
damage(dark,      normal,     1).
damage(steel,     normal,     1).
damage(fairy,     normal,     1).


damage(fire,      fire,       0.5).
damage(water,     fire,       2).
damage(grass,     fire,       0.5).
damage(ice,       fire,       0.5).
damage(ground,    fire,       2).
damage(bug,       fire,       0.5).
damage(rock,      fire,       2).
damage(steel,     fire,       0.5).
damage(fairy,     fire,       0.5).
damage(normal,    fire,       1).
damage(electric,  fire,       1).
damage(fighting,  fire,       1).
damage(poison,    fire,       1).
damage(flying,    fire,       1).
damage(psyhic,    fire,       1).
damage(ghost,     fire,       1).
damage(dragon,    fire,       1).
damage(dark,      fire,       1).


damage(fire,      water,      0.5).
damage(water,     water,      0.5).
damage(electric,  water,      2).
damage(grass,     water,      2).
damage(ice,       water,      0.5).
damage(steel,     water,      0.5).
damage(normal,    water,      1).
damage(fighting,  water,      1).
damage(poison,    water,      1).
damage(ground,    water,      1).
damage(flying,    water,      1).
damage(psyhic,    water,      1).
damage(bug,       water,      1).
damage(rock,      water,      1).
damage(ghost,     water,      1).
damage(dragon,    water,      1).
damage(dark,      water,      1).
damage(fairy,     water,      1).


damage(electric,  electric,   0.5).
damage(ground,    electric,   2).
damage(flying,    electric,   0.5).
damage(steel,     electric,   0.5).
damage(normal,    electric,   1).
damage(fire,      electric,   1).
damage(water,     electric,   1).
damage(grass,     electric,   1).
damage(ice,       electric,   1).
damage(fighting,  electric,   1).
damage(poison,    electric,   1).
damage(psyhic,    electric,   1).
damage(bug,       electric,   1).
damage(rock,      electric,   1).
damage(ghost,     electric,   1).
damage(dragon,    electric,   1).
damage(dark,      electric,   1).
damage(fairy,     electric,   1).


damage(fire,      grass,      2).
damage(water,     grass,      0.5).
damage(electric,  grass,      0.5).
damage(grass,     grass,      0.5).
damage(ice,       grass,      2).
damage(poison,    grass,      2).
damage(ground,    grass,      0.5).
damage(flying,    grass,      2).
damage(bug,       grass,      2).
damage(normal,    grass,      1).
damage(fighting,  grass,      1).
damage(psyhic,    grass,      1).
damage(rock,      grass,      1).
damage(ghost,     grass,      1).
damage(dragon,    grass,      1).
damage(dark,      grass,      1).
damage(steel,     grass,      1).
damage(fairy,     grass,      1).


damage(fire,      ice,        2).
damage(ice,       ice,        0.5).
damage(fighting,  ice,        2).
damage(rock,      ice,        2).
damage(steel,     ice,        2).
damage(normal,    ice,        1).
damage(water,     ice,        1).
damage(electric,  ice,        1).
damage(grass,     ice,        1).
damage(poison,    ice,        1).
damage(ground,    ice,        1).
damage(flying,    ice,        1).
damage(psyhic,    ice,        1).
damage(bug,       ice,        1).
damage(ghost,     ice,        1).
damage(dragon,    ice,        1).
damage(dark,      ice,        1).
damage(fairy,     ice,        1).


damage(flying,    fighting,   2).
damage(psyhic,    fighting,   2).
damage(bug,       fighting,   0.5).
damage(rock,      fighting,   0.5).
damage(dark,      fighting,   0.5).
damage(fairy,     fighting,   2).
damage(normal,    fighting,   1).
damage(fire,      fighting,   1).
damage(water,     fighting,   1).
damage(electric,  fighting,   1).
damage(grass,     fighting,   1).
damage(ice,       fighting,   1).
damage(fighting,  fighting,   1).
damage(poison,    fighting,   1).
damage(ground,    fighting,   1).
damage(ghost,     fighting,   1).
damage(dragon,    fighting,   1).
damage(steel,     fighting,   1).


damage(grass,     poison,     0.5).
damage(fighting,  poison,     0.5).
damage(poison,    poison,     0.5).
damage(ground,    poison,     2).
damage(psyhic,    poison,     2).
damage(bug,       poison,     0.5).
damage(fairy,     poison,     0.5).
damage(normal,    poison,     1).
damage(fire,      poison,     1).
damage(water,     poison,     1).
damage(electric,  poison,     1).
damage(ice,       poison,     1).
damage(flying,    poison,     1).
damage(rock,      poison,     1).
damage(ghost,     poison,     1).
damage(dragon,    poison,     1).
damage(dark,      poison,     1).
damage(steel,     poison,     1).


damage(water,     ground,     2).
damage(electric,  ground,     0).
damage(grass,     ground,     2).
damage(ice,       ground,     2).
damage(poison,    ground,     0.5).
damage(rock,      ground,     0.5).
damage(normal,    ground,     1).
damage(fire,      ground,     1).
damage(fighting,  ground,     1).
damage(ground,    ground,     1).
damage(flying,    ground,     1).
damage(psyhic,    ground,     1).
damage(bug,       ground,     1).
damage(ghost,     ground,     1).
damage(dragon,    ground,     1).
damage(dark,      ground,     1).
damage(steel,     ground,     1).
damage(fairy,     ground,     1).


damage(electric,  flying,     2).
damage(grass,     flying,     0.5).
damage(ice,       flying,     2).
damage(fighting,  flying,     0.5).
damage(ground,    flying,     0).
damage(bug,       flying,     0.5).
damage(rock,      flying,     2).
damage(normal,    flying,     1).
damage(fire,      flying,     1).
damage(water,     flying,     1).
damage(poison,    flying,     1).
damage(flying,    flying,     1).
damage(psyhic,    flying,     1).
damage(ghost,     flying,     1).
damage(dragon,    flying,     1).
damage(dark,      flying,     1).
damage(steel,     flying,     1).
damage(fairy,     flying,     1).


damage(fighting,  psyhic,     0.5).
damage(psyhic,    psyhic,     0.5).
damage(bug,       psyhic,     2).
damage(ghost,     psyhic,     2).
damage(dark,      psyhic,     2).
damage(normal,    psyhic,     1).
damage(fire,      psyhic,     1).
damage(water,     psyhic,     1).
damage(electric,  psyhic,     1).
damage(grass,     psyhic,     1).
damage(ice,       psyhic,     1).
damage(poison,    psyhic,     1).
damage(ground,    psyhic,     1).
damage(flying,    psyhic,     1).
damage(rock,      psyhic,     1).
damage(dragon,    psyhic,     1).
damage(steel,     psyhic,     1).
damage(fairy,     psyhic,     1).


damage(fire,      bug,        2).
damage(grass,     bug,        0.5).
damage(fighting,  bug,        0.5).
damage(ground,    bug,        0.5).
damage(flying,    bug,        2).
damage(rock,      bug,        2).
damage(normal,    bug,        1).
damage(water,     bug,        1).
damage(electric,  bug,        1).
damage(ice,       bug,        1).
damage(poison,    bug,        1).
damage(psyhic,    bug,        1).
damage(bug,       bug,        1).
damage(ghost,     bug,        1).
damage(dragon,    bug,        1).
damage(dark,      bug,        1).
damage(steel,     bug,        1).
damage(fairy,     bug,        1).


damage(normal,    rock,       0.5).
damage(fire,      rock,       0.5).
damage(water,     rock,       2).
damage(grass,     rock,       2).
damage(fighting,  rock,       2).
damage(poison,    rock,       0.5).
damage(ground,    rock,       2).
damage(flying,    rock,       0.5).
damage(steel,     rock,       2).
damage(electric,  rock,       1).
damage(ice,       rock,       1).
damage(psyhic,    rock,       1).
damage(bug,       rock,       1).
damage(rock,      rock,       1).
damage(ghost,     rock,       1).
damage(dragon,    rock,       1).
damage(dark,      rock,       1).
damage(fairy,     rock,       1).


damage(normal,    ghost,      0).
damage(fighting,  ghost,      0).
damage(poison,    ghost,      0.5).
damage(bug,       ghost,      0.5).
damage(ghost,     ghost,      2).
damage(dark,      ghost,      2).
damage(fire,      ghost,      1).
damage(water,     ghost,      1).
damage(electric,  ghost,      1).
damage(grass,     ghost,      1).
damage(ice,       ghost,      1).
damage(ground,    ghost,      1).
damage(flying,    ghost,      1).
damage(psyhic,    ghost,      1).
damage(rock,      ghost,      1).
damage(dragon,    ghost,      1).
damage(steel,     ghost,      1).
damage(fairy,     ghost,      1).


damage(fire,      dragon,     0.5).
damage(water,     dragon,     0.5).
damage(electric,  dragon,     0.5).
damage(grass,     dragon,     0.5).
damage(ice,       dragon,     2).
damage(dragon,    dragon,     2).
damage(fairy,     dragon,     2).
damage(normal,    dragon,     1).
damage(fighting,  dragon,     1).
damage(poison,    dragon,     1).
damage(ground,    dragon,     1).
damage(flying,    dragon,     1).
damage(psyhic,    dragon,     1).
damage(bug,       dragon,     1).
damage(rock,      dragon,     1).
damage(ghost,     dragon,     1).
damage(dark,      dragon,     1).
damage(steel,     dragon,     1).


damage(fighting,  dark,       2).
damage(psyhic,    dark,       0).
damage(bug,       dark,       2).
damage(ghost,     dark,       0.5).
damage(dark,      dark,       0.5).
damage(fairy,     dark,       2).
damage(normal,    dark,       1).
damage(fire,      dark,       1).
damage(water,     dark,       1).
damage(electric,  dark,       1).
damage(grass,     dark,       1).
damage(ice,       dark,       1).
damage(poison,    dark,       1).
damage(ground,    dark,       1).
damage(flying,    dark,       1).
damage(rock,      dark,       1).
damage(dragon,    dark,       1).
damage(steel,     dark,       1).


damage(normal,    steel,      0.5).
damage(fire,      steel,      2).
damage(grass,     steel,      0.5).
damage(ice,       steel,      0.5).
damage(fighting,  steel,      2).
damage(poison,    steel,      0).
damage(ground,    steel,      2).
damage(flying,    steel,      0.5).
damage(psyhic,    steel,      0.5).
damage(bug,       steel,      0.5).
damage(rock,      steel,      0.5).
damage(dragon,    steel,      0.5).
damage(steel,     steel,      0.5).
damage(fairy,     steel,      0.5).
damage(water,     steel,      1).
damage(electric,  steel,      1).
damage(ghost,     steel,      1).
damage(dark,      steel,      1).


damage(fighting,  fairy,      0.5).
damage(poison,    fairy,      2).
damage(bug,       fairy,      0.5).
damage(dragon,    fairy,      0).
damage(dark,      fairy,      0.5).
damage(steel,     fairy,      2).
damage(normal,    fairy,      1).
damage(fire,      fairy,      1).
damage(water,     fairy,      1).
damage(electric,  fairy,      1).
damage(grass,     fairy,      1).
damage(ice,       fairy,      1).
damage(ground,    fairy,      1).
damage(flying,    fairy,      1).
damage(psyhic,    fairy,      1).
damage(rock,      fairy,      1).
damage(ghost,     fairy,      1).
damage(fairy,     fairy,      1).


%  Regras
damage(X1, X2, Y, [D1, D2]) :-
    damage(X1, Y, D1),
    damage(X2, Y, D2).

damage(X1, X2, Y1, Y2, [D1, D2, D3, D4]) :-
    damage(X1, X2, Y1, [D1, D2]),
    damage(X1, X2, Y2, [D3, D4]).

