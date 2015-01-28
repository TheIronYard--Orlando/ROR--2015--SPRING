# 14 -- ActiveRecord-2

## Description

Extend the data model. Create a Coach class and a migration for it. (There's a way to do both of those at once.) The coach should have a name and a team. 

Create a Game class and a migration for it. A game should have a date, a home team, an away team, and scores for each. This is a more complicated set of relationships than we looked at in class. Lean on the documentation in the Rails guides to set up how a game, home team, and away team should relate to each other. (I'll tell you that in this setup, a team can't have_many :games, though you can define a method that does something similar.)

Add coaches for every team that made the playoffs, every game for the last week of the regular season, and every game for one specific team. (Either your favorite or not the Patriots.) 

Define Team#won? which should say whether a team won a particular game. Test it against the data you entered.

Define Team#opponents, which should return every team a team played during the season.

Define Coach#beat?, which should say whether a coach beat another team. Extend the method to be able to say whether a coach beat another team, or whether a coach beat another coach.

Add validations for each class as appropriate. (You'll have to read up on what kind of validations are available.) Attempt to create an object that should fail the validation to ensure the validation is structured correctly.

Another step in the HTML document: take step\_2.html and make it look like step\_2_after.png

## Objectives

### Learning Objectives

You will continue to practice relating Ruby models to the contents of a database through ActiveRecord relationships, and learn how to set up and use migrations and validations. 

### Performance Objectives

You will be able to use more of the ActiveRecord interface, and write methods in Ruby classes which utilize the interface. 

### Deliverables

* turn the following in in a new branch off of master, in a folder called `active_record-2`.
* `city.rb` and `state.rb` files with appropriate validations
* `team.rb`, `coach.rb`, and `game.rb` files with appropriate validations and methods as described above
* `step_2.html`

#### Tasks

* Read the following Rails Guides:
  * [Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html)
  * [Active Record Associations, Section 1-2.3](http://guides.rubyonrails.org/association_basics.html)
  * [Active Record Querying](http://guides.rubyonrails.org/active_record_querying.html)
  * [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html)
  * [Active Record Migrations](http://guides.rubyonrails.org/active_record_migrations.html)
