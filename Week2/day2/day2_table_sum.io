a := list(list(1, 2 , 3 ,4), list(3, 4, 5, 6))

somme := 0
# First foreach form
a foreach(i, v, somme = somme + v sum)
somme println

somme := 0
# Second foreach form
a foreach(v, somme = somme +  v sum)
somme println