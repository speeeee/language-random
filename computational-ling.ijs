NB. contains simulations for the language development game.
NB. adapted from "The evolution of language", Nowak, Krakauer

NB. later will be defined global objects to use.

NB. definitions of object (sounds);(P,speaking);(Q,listening)
smat=: ;@:(1&{)"1
lmat=: ;@:(2&{)"1

NB. mutual payoff function for two speakers
sl_payoff=:+/@:,@((smat@:[)*|:"2@:lmat@:])
payoff=:(0.5*sl_payoff+sl_payoff~)"1 1
NB. returns total amount of payoff for each individual.
payoff_system=: +/"1 @:(payoff/~)

NB. parameters of new generation
NB. amt of offspring is determined by constant proprtion dividing the maximum
NB.   possible cumulative payoff for an individual.
prop=:2500%5
NB. 1 1 1 {"1 1 q
NB. (x=data) new_offspring (y=score prop)
NB. TODO: might have to change rank.
NB. TODO: floor tolerance might be an issue.
new_offspring=: ((,&3)@:(<.@:%/)@:])$[
NB. TODO: fix final grouping operation
new_generation=: ,](new_offspring"1 1) payoff_system(,"0 1)#

NB. analysis of particular generations
NB. population average of P matrices
p_avg=: (+/ % #)@:>@:(1&{"1 1)

r_candidate =: (3 : 'y;(5 5$(%&100)25?100);(5 5$(%&100)25?100)')"0
