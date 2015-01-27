# 13 -- ActiveRecord

## Description

That went less smoothly than I had hoped.

After going through that structured exercise, use Zed Shaw's [Learn SQL The Hard Way (lessons 1-13)](http://sql.learncodethehardway.org/book) to play with SQL from the terminal. Remember if you ever get stuck with a SQLite database and you want to start over, you can just delete the .db file and recreate it as I had to do so many times this morning. So very many times.

You should have an nfl.db file that has data in it. Really, you should have had one of those before noon yesterday, since I made one during lecture yesterday and it was an important part of last night's homework. If you didn't have one then or didn't finish last night's queries, do them first:

* Select every team from the NFC North
* Select every team with at least 11 wins 
* Select every team with at least 8 wins that did not make the playoffs
* Rename every team with fewer than 4 wins "Losers"
* Select every team that plays in a city of fewer than 5 million people, and the name of the city
* Select every AFC team that plays in a city that is shrinking in population
* Select every city that has a team
* Select every state that has a team
* Select every team that plays in California

Once you've written queries for those in pure SQL, get the same information in the Rails console. In addition, use the console for the following queries:

* Find the 3 smallest cities with NFL teams
* Find the number of teams in cities of between 1 million and 2 million (as of 2013)
* Find the division with the largest average number of wins
* List the names of the teams of the AFC in descending order of the size of their cities
* Change the name of the 5th largest city in New Jersey to include the phrase "like the inventor"
* Remove New Mexico and all its cities from the database with one line in the console. You can edit a line in file in app/models too.

Next, method writing time. Try to get the effect of each of these in the console, and once you have something that works, write a method in the appropriate place. It's not the formalized testing we've been doing, but you'll see that again soon.

* Define a method `City.fastest_growing` that returns the single fastest growing city
* Define a method `City.shrinking` that returns all cities with decreasing population
* Define a method `Team#division_rivals` that returns all other teams in the same (conference and) division
* Define a method `Team#division_leader?` that checks whether a team has more wins than any other team in its (conference and) division
* Define a method `Team#division_winner?` that checks whether a team leads its division and all its division rivals have played 16 games

## Objectives

### Learning Objectives

Get more of a handle on SQL and how to avoid it with Rails.

### Performance Objectives

You will be able to reproduce SQL queries with the ActiveRecord interface, and extend that interface to encapsulate queries in methods.

### Deliverables

* turn the following in in a new branch off of master, in a folder called `active_record`.
* a `nfl_queries.sql` file listing the SQL queries you wrote 
* a `nfl_queries.rb` file listing the ActiveRecord queries you wrote
* `city.rb` and `team.rb` files with methods defined as described above

#### Tasks

* Read the following Rails Guides:
  * [Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html)
  * [Active Record Associations, Section 1-2.3](http://guides.rubyonrails.org/association_basics.html)
  * [Active Record Querying](http://guides.rubyonrails.org/active_record_querying.html)
  * [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html)
  * [Active Record Migrations](http://guides.rubyonrails.org/active_record_migrations.html)
