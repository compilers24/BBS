
human(valod).
human(sona).
human(anto).

wine_lover(anto).
wine_lover(valod).

drinks_water(X) :- human(X).

drinks_wine(X) :- wine_lover(X).
