main :-
    retractall(asked(_,_)),
    character(Character),
    !,
    nl,
    write('Your character is '), write(Character), write(.), nl.
main :-
    nl,
    write('The character not found.'), nl.

characteristic(last_air_bender) :-
    query('Is your character from the last airbender?').

characteristic(male) :-
    query('Is your character a male?').

characteristic(waterbender) :-
    query('Is your character a waterbender?').

characteristic(earthbender) :-
    query('Is your character a earthbender?').

characteristic(firebender) :-
    query('Is your character a firebender?').

characteristic(has_brother) :-
    query('Is your character has a brother?').

characteristic(is_evil) :-
    query('Is your character evil?').

characteristic(has_sister) :-
    query('Is your character has a sister?').

character(aang):-
    characteristic(last_air_bender),
    characteristic(waterbender),
    characteristic(earthbender),
#порождаем список L всех положительных ответов на уже заданные вопросы
    bagof(X,asked(X,y),L),
#Находим длину списка и сравниваем её с необходимым числом для однозначного определения персонажа
    length(L,A),
    A=3,!.

character(katara):-
    characteristic(last_air_bender),
    characteristic(waterbender),
    characteristic(has_brother).

character(master_paku):-
    characteristic(last_air_bender),
    characteristic(waterbender),
    characteristic(male),
    bagof(X,asked(X,y),L),
    length(L,A),
    A=3,!.

character(hama):-
    characteristic(last_air_bender),
    characteristic(waterbender).

character(iroh):-
    characteristic(last_air_bender),
    characteristic(firebender),
    characteristic(has_brother),
    characteristic(male).

character(Ozai):-
    characteristic(last_air_bender),
    characteristic(firebender),
    characteristic(has_brother),
    characteristic(male),
    characteristic(is_evil).

character(zuko):-
    characteristic(last_air_bender),
    characteristic(firebender),
    characteristic(male).

character(azula):-
    characteristic(last_air_bender),
    characteristic(firebender),
    characteristic(has_brother).

character(toph):-
    characteristic(last_air_bender),
    characteristic(earthbender).

character(suki):-
    characteristic(last_air_bender).

character(sokka):-
    characteristic(last_air_bender),
    characteristic(male).

character(korra):-
    characteristic(waterbender),
    characteristic(earthbender),
    bagof(X,asked(X,y),L),
    length(L,A),
    A=2,!.

character(kaya):-
    characteristic(waterbender),
    characteristic(has_brother).

character(amon):-
    characteristic(waterbender),
    characteristic(has_brother),
    characteristic(male).

character(yakone):-
    characteristic(waterbender),
    characteristic(male).

character(mako):-
    characteristic(firebender),
    characteristic(has_brother),
    characteristic(male).

character(iroh_jr):-
    characteristic(firebender),
    characteristic(male).

character(bolin):-
    characteristic(earthbender),
    characteristic(has_brother),
    characteristic(male).

character(kuvira):-
    characteristic(earthbender).

character(lin):-
    characteristic(earthbender),
    characteristic(has_sister).

character(bumi):-
    characteristic(has_brother),
    characteristic(male).

character(warik):-
    characteristic(male).

query(Prompt) :-
    (   asked(Prompt, Reply) -> true
    ;   nl, write(Prompt), write(' (y/n)? '),
        read(X),(X = y -> Reply = y ; Reply = n),
	assert(asked(Prompt, Reply))
    ),
    Reply = y.
