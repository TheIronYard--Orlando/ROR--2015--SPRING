# 09 -- Feeling Super, Thanks for Asking

## Description

A bit of practice with classes and superclasses today. You will make your first superclass for the card games we've been writing, and you'll see some more about that material in the koans. Try to finish the koans today.

Pry is a useful tool, with features that are easier to understand via a tutorial than watching me type things fast. I'll give you a bit to read on it, and you can decide for yourself whether you prefer pry or irb.

Today we also start playing around with HTML. Due to time constraints on the lecture, that's going to involve a lot of reading on your own. 

Remember to create your branch *off of master*, so that the only unique things in it are those you're working on today. 

## Objectives

### Learning Objectives

Since I didn't get as far as I wanted in lecture, you get to learn the valuable art of tutorial reading! You'll also get a wee bit of practice dealing with classes and superclasses, and the remainder of the koans will introduce you to a few more topics in Ruby that are worth knowing but not the best use of lecture time. 

If you don't know any HTML right now, you will by tomorrow.

### Performance Objectives

* Go through the [introductory guide](http://www.htmldog.com/guides/html/beginner/) at http://www.htmldog.com. If you know plenty of HTML already, feel free to dress it up a bit. Make sure to share what you know with the people around you.

* Read over http://www.sitepoint.com/rubyists-time-pry-irb/ and write out the code examples it gives you. The only thing you'll need to change is using 'subl' instead of 'vim' as your default editor.

* Knock out those koans. Only include koans into your *branch* once you've completed them. (Don't delete them from your *directory*, just have git forget about them - https://scotch.io/quick-tips/how-to-use-git-remove-without-deleting-the-files)

* Make distinct classes for BlackjackCard and PokerCard, which each inherit from a Card superclass. Reorganize your tests as well, so that each class has a matching test file that tests only the aspects of that class that are unique.

### Deliverables

* a `/code/cards` directory with two subdirectories and two files:
  * `/blackjack`, with completed blackjack_card_test.rb and blackjack_card.rb
  * `/three_card_poker`, with completed poker_card_test.rb and poker_card.rb
  * card.rb and card_test.rb can live in `/code/cards`
* a `/code/koans` directory with *only those koans in which you've made progress* (finished, or at least started)
* a `/html` directory with myfirstpage.html

#### Tasks

You tell me. Whatever they are, they should be the only thing in the description for your issue. Speaking of your issue, the last task will be to solicit thumbsup from two other people, once you're finished. When you're asked to give thumbsup, glance over the checkboxes and the PR to make sure everything that's supposed to be there appears to be. If any big problems jump out at you, don't give thumbsup!


#### Note

One last thing - install [XCode](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12). You may need to do this at home; I haven't been able to do it with the internet in here.
