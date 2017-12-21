/*Name: Ojaswee Dhungana
Prolog
finding_a_sublist
*/

find_needle([],_,Index):- format('match index ~w~n',[Index]),!.
find_needle(N,H,Index):-
        [Nh|Nt] = N,
        [Hh|Ht] = H,
        Nh = Hh,
        format('match ~w~n',[Hh]),
        find_needle(Nt,Ht,Index).
 
find_needle(N,H,Index):-
        [Nh|_] = N,
        [Hh|Ht] = H,
        \+ (Nh = Hh),
        %format('DID NOT match ~w~n',[Hh]),
		NewIndex is Index+1,
        find_needle(N,Ht,NewIndex).


find(N,H):- Index is 1,
            find_needle(N,H,Index).