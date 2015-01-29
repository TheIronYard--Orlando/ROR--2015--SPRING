# 15 -- Sup-ERB-owl (except without ERB really)

## Description

This is going to be super.

Let's make the beginning of a database and Rails app to support a bit of friendly wagering. The app should have users who can make predictions about the final scores of upcoming games. The games table should be updated to include point spreads. It should be possible to rank users by how successful they were at picking winners as well as how successful they were at beating the spread. (If you don't know what it means to beat the spread, ask Jeff.) It should also be possible to rank teams based on their records as well as how successful *they* were at beating the spread.

Use the Sports Data API to add data on every game from the 2014 NFL regular season into your database. Since there's a coaches table now, they should have wins and losses too. Look into [Active Record Callbacks](http://guides.rubyonrails.org/active_record_callbacks.html) to see how to update a coach's wins and losses each time his team wins or loses a game. 

Use [the .csv file Spencer posted on HipChat](http://www.repole.com/sun4cast/stats/nfl2014stats.csv) to generate point spreads for the first few weeks of the season. Once that gives out, use random numbers of the same size for the rest of the season.

Make up 100 users, with the sorts of attributes users should have, and generate predictions for them. In general, predictions should not be possible after a game has been played. Add a validation for that, and work around it when you're seeding data.

## Objectives

### Learning Objectives

You will begin to get used to manipulating the giant amount of data that's available in the world through APIs, to modeling data in a database, and to performing operations on that modeled data in Ruby.

### Performance Objectives

You will have a functional back end of a Rails app filled with data - mostly real, some fake - as described above.

### Deliverables

* Let's get the Rails apps into git. Run `subl .gitignore` to update that file to make git ignore the nfl.db file, then initialize git in your project's root, commit what you have already, and push it to a new repository. 
* Commit to that repository while you work.
* In your PR, link to the new repository instead of your TIY-Assignments one.
 

#### Tasks
