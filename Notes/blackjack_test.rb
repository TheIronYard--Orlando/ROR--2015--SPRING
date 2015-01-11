# the game of blackjack:
# using one or many standard decks of playing cards,
# one or many players are given two cards each by the dealer
# the dealer gets two cards, one of which stays face down
# the players' cards are all face up

# once the 1st pair of cards has been dealt to all players (and dealer),
# everyone checks for blackjack, which is a pair of cards worth 21
# (numbered cards are worth their number, face cards = 10, ace = 1 or 11)
# a player who has blackjack when the dealer does not wins
# a player who does not have blackjack when the dealer does, loses
# if both dealer and player have blackjack, it's a push (tie)

# assuming dealer does not have blackjack, play continues with
# player 1 making all decisions before continuing to player 2 etc

# a player's decision options are as follows:
# * insurance - 1st decision only - player withdraws and forfeits 1/2 bet to dealer
# * split - 1st decision only - if 1st 2 cards are of equal value,
#   player can split them into 2 hands, betting equally on both
#   the dealer would draw an additional card for each hand, so the 2
#   hands would each start w 2 cards as normal, and player would play each hand 
#   independently as below
# * hit - receive an additional card from dealer
# * stand - player stops receiving cards and play passes to next player
# * double down - player may double bet in exchange for hitting exactly 1 more time

# a player may hit as many times as desired so long as the value of the hand does not exceed 21
# the value of the hand is the sum of the values of the cards
# in calculating the value of a hand, the values of any aces in it can be set to 1 or 11, 
# whichever is better for the player
# if the value of a hand exceeds 21, the hand busts (loses)

# once a player stands (or busts), the next hand is played, etc
# once all player hands have played, the dealer draws according to rules:
# * the dealer must hit until the hand is valued at 17 or greater
# * at that point the dealer must stand
# once the dealer stands or busts, all bets are settled and the round is over
 