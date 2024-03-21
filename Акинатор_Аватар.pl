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

characteristic(waterbender) :-
    query('Is your character a waterbender?').

characteristic(earthbender) :-
    query('Is your character a earthbender?').

characteristic(firebender) :-
    query('Is your character a firebender?').

characteristic(male) :-
    query('Is your character a male?').

characteristic(has_brother) :-
    query('Is your character has a brother?').
 
character(aang):-
    characteristic(last_air_bender),
    characteristic(waterbender),
    characteristic(earthbender),
    characteristic(firebender),
    characteristic(male).

character(katara):-
    characteristic(last_air_bender),
    characteristic(waterbender),
    characteristic(earthbender),
    characteristic(firebender),
    characteristic(has_brother).

character(master_paku):-
    characteristic(last_air_bender),
    characteristic(waterbender),
    characteristic(male).

character(hama):-
    characteristic(last_air_bender),
    characteristic(waterbender).

character(iroh):-
    characteristic(last_air_bender),
    characteristic(firebender),
    characteristic(has_brother),
    characteristic(male).

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
    characteristic(firebender).

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
