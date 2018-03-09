NB. Words that define probability distributions (adaptation of
NB.   probabilistic functional programming).

NB. a discrete distribution is a 2 by N array with the first row representing
NB.   the values, and the second row representing relative frequency.

NB. helper function for unifying two equal-size arrays into 2xN array.
NB. TODO: fix this, there is probably a built-in way.
cb=:(2,#@:])$,

NB. an example defining the uniform distribution, mapping the array given to
NB.   the same value.
#y
uniform=:#$^&_1@:#
