type suit = Club | Diamond | Heart | Spade;;

type rank = King | Queen | Jack | Ten | Nine | Eight | Seven | Six | Five | Four | Three | Two | Ace;;

type card = {card_rank:rank; card_suit:suit};;

let c1 = {card_rank = Ace; card_suit = Club} in ();
let c2 = {card_rank = Queen; card_suit = Heart} in ();
let c3 = {card_rank = Two; card_suit = Diamond} in ();
let c4 = {card_rank = Seven; card_suit = Spade}
in 
assert (c2.card_rank = Queen);
assert (c1.card_rank = Ace);
assert (c3.card_suit = Diamond);
assert (not(c4.card_suit = Heart));