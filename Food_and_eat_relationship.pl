/* Name: Ojaswee Dhungana
Prolog
food and eat relationship*/

food(apple).
food(oyster).
food(X) :- eat(_, X),!.
eat(tom, snake).
eat(sue, X) :- eat(tom, X).
eat(john, X) :- food(X).

%To execute what does John eat... query eat(john, X). 


	

