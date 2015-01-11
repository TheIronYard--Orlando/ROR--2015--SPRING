# the game of blackjack:
# using one standard deck of playing cards,
# one player is given two cards by the dealer
# the dealer gets two cards, one of which stays face down
# the player's cards are all face up

# once the 1st pair of cards has been dealt to the player (and dealer),
# everyone checks for blackjack, which is a pair of cards worth 21
# (numbered cards are worth their number, face cards = 10, ace = 11)
# a player who has blackjack when the dealer does not wins
# a player who does not have blackjack when the dealer does, loses
# if both dealer and player have blackjack, it's a push (tie)

# assuming dealer does not have blackjack, play continues with
# a player's decision options are as follows:
# * hit - receive an additional card from dealer
# * stand - player stops receiving cards and play passes to dealer

# a player may hit as many times as desired so long as the value of the hand does not exceed 21
# the value of the hand is the sum of the values of the cards
# if the value of a hand exceeds 21, the hand busts (loses)

# once a player stands (or busts), the dealer draws according to rules:
# * the dealer must hit until the hand is valued at 17 or greater
# * at that point the dealer must stand
# once the dealer stands or busts, all bets are settled and the round is over
