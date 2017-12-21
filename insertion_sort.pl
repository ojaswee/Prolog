/*Name: Ojaswee Dhungana
Prolog 
List-based insertion sort */

sorting([W|X], Sorted) :- sorting(X, SortedTail), insert(W, SortedTail, Sorted).
sorting([], []).

insert(W, [X|Y], [X|Z]) :- W > X, !, insert(W, Y, Z).
insert(W, Y, [W|Y]).

/*
sorting([3,5,9,1],SortedList).*/
