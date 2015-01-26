# 12 -- Are You Ready For Some SQL?

## Description

After a long morning shaving some yaks, you have a database. Or at least I have a database, and I can send you the file I used to make it. Anyway, we'll start with a few other databases.

[MISSQL Command](http://missqlcommand.com) is a neat little tutorial that illustrates the basics of SQL. Like the other online tutorials we've done, don't treat it as a game that you're trying to beat as quickly as possible. Read through the documentation the site gives you. (There's a panel on the left side of the screen with several pages of information for each of the SQL challenges.)

After going through that structured exercise, use Zed Shaw's [Learn SQL The Hard Way (lessons 1-13)](http://sql.learncodethehardway.org/book) to play with SQL from the terminal. Remember if you ever get stuck with a SQLite database and you want to start over, you can just delete the .db file and recreate it as I had to do so many times this morning. So very many times.

As the final bit of SQL, let's play with that NFL database. There is enough data in there to formulate some interesting queries. Let's see....

* Select every team from the NFC North
* Select every team with at least 11 wins 
* Select every team with at least 8 wins that did not make the playoffs
* Rename every team with fewer than 4 wins "Losers"
* Select every team that plays in a city of fewer than 5 million people, and the name of the city
* Select every AFC team that plays in a city that is shrinking in population
* Select every city that has a team
* Select every state that has a team
* Select every team that plays in California

## Objectives

### Learning Objectives

You'll get a decent amount of practice with SQL. You'll get tired enough of it that you'll yearn for an easier way to do it in Ruby. I'm here for you. There are a few pages in the Rails Guides that present the way Rails handles SQL. 

### Performance Objectives

You will be able to write SQL queries for all of the CRUD operations.

### Deliverables

* a `/sql` directory with any sql files you created for "Learn the Hard Way", a separate file listing the queries you wrote for that tutorial (saved under the name `learn_the_hard_way_queries.sql`), and the queries you needed to write in the sqlite console to work out all nine of the above selects (saved as `nfl_queries.sql`).

#### Tasks

* Complete the MSSQLCommand tutorial
* Complete first 13 lessons of the Learn SQL the Hard Way tutorial
* Complete the nine select statements above
* Read the following Rails Guides:
  * [Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html)
  * [Active Record Associations, Section 1-2.3](http://guides.rubyonrails.org/association_basics.html)
  * [Active Record Querying](http://guides.rubyonrails.org/active_record_querying.html)
