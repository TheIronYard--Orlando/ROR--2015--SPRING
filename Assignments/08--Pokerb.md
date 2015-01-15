# Three Card Poker
## Cards and Initial Bets

The modern casino game of Three Card Poker is played with a 52-card deck. There are two bet types available. Before seeing any cards, each player can make a bet on one, both or neither.

* Ante and Play - a bet that the player's hand will beat the dealer's
* Pair Plus® - a bet on the quality of the player's hand, paid independently of what the dealer is dealt.

The ranking of hands for Three Card Poker from lowest to highest is:

1. *High Card* - three cards of different ranks, not consecutive and not all the same suit, such as &spades;Q-&clubs;J-&spades;9. When comparing two such hands, the highest cards are compared first; if they are equal the middle cards are compared and finally the lowest cards. For example K-4-2 beats Q-10-9, which beats Q-10-7.
2. *Pair* - two cards of equal rank and one of a different rank, such as 6-6-Q. When comparing two hands with a pair, the rank of the pair decides; if both hands have the equal pairs, the hand with the better odd card ("kicker") wins.
3. *Flush* - three cards of the same suit. These are compared in the same way as "high card" hands.
4. *Straight* - three consecutive cards of mixed suits. Between two straights the one with the higher ranked cards wins. Ace can count high or low: A-K-Q is the highest type of straight and 3-2-A is the lowest. 2-A-K is not a straight.
5. *Three of a Kind* - three cards of the same rank, higher ranks beating lower ranks.
6. *Straight Flush* - three consecutive cards of the same suit. These are compared in the same way as straights, ace counting high or low.

Note that there is no ranking among suits. Hands that have the same combination and equally high cards, differing only in suit, are tied.

## Ante and Play

Three cards are dealt to each player who has placed an ante bet and three cards to the dealer. After viewing his three cards the player must decide to either:

* make a play bet, placing an additional amount equal to the ante bet, or
* fold, losing the ante bet and any Pair Plus® bet.

Following this decision, the dealer's hand is revealed and there is a showdown:

1. If the dealer does not have Queen high or better, the ante bet is paid even money and the play bet is returned.
2. If the dealer does have Queen high or better and the player's hand beats the dealer's hand the ante bet and play bet are paid even money.
3. If the dealer does have Queen high or better and the player's hand is equal to the dealer's hand the player's ante and play bets are returned.
4. If the dealer does have Queen high or better and the player's hand is worse than the dealer's hand the ante and play bet are lost.

An additional bonus is also payed on the ante bet irrespective of dealer's hand or outcome of the hand if the player holds a strong hand:

* Even money for a straight
* 4 to 1 for three of a kind
* 5 to 1 for a straight flush

## Pair Plus®

The name of this special side bet, which has been a part of the game since its invention in the 1990's, was registered as a trade mark of SHFL Entertainment, Inc. in 2012.

The result of a Pair Plus® bet depends only on the three cards dealt to the player - the dealer's cards are irrelevant. The Pair Plus® bet is lost if the player does not hold a pair or better. Winning hands are paid as follows:

* Even money for a pair
* 4 to 1 for a flush
* 6 to 1 for a straight
* 30 to 1 for three of a kind
* 40 to 1 for a straight flush

## What You Have To Do

Make a game for one player which will be playable in irb. Write tests and code to handle a Pair Plus® bet before dealing with the Ante bet. (Note that both bets are placed before any cards are seen. You might say that bets are placed *initially*.) 

Game output could look like:

```ruby
$ game = ThreeCardPoker.new # maybe there will be arguments to this method
=> "You have the three of hearts, nine of spades, and five of clubs"
$ game.fold
=> "You lost $____" <= that space would be filled in with the total of your bets

$ game = ThreeCardPoker.new # again, maybe with arguments, who knows
=> "You have the five of spades, five of diamonds, and five of hearts"
$ game.play_bet!
=> "SHOWDOWN! Dealer has eight of clubs, nine of clubs, Queen of diamonds/n"
   "You win $__ on the ante bet and $___ on the play bet./n"
   "For the strong hand, you win $___./n"
   "For Pair Plus® you win $___."