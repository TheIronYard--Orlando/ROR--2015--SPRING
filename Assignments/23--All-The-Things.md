# 23 - All The Things

Time to show yourselves how much you've learned. It's going to be more than you think.
For the weekend, you're going to take a second look at several homework assignments, or at least problems like them.
I'm giving you enough that even I can see you're not going to be able to finish it all. Do as much and as many as you can.
There will be a temptation to spend all your time on the new error project. Fight that temptation. Try at least two other problems.
Work with each other. Ask Ari and me questions. Don't let yourself get stuck for long periods of time.

And now, the problems. In no particular order of difficulty, they are:

## Translations on Rails
1. Use TDD to write a method that can translate a number (1,2,3,...1000000) into Spanish. 
2. Write a Rails app that can display the numbers and their translations in a list, eg "1 in Spanish is 'uno'". You won't need any model files, just a view and a controller. Put the file you wrote in step 1 into the lib directory in your app so the view template can use the method.
3. Use TDD to write a method that can translate a number into Roman numerals. Put that in the lib directory of your app, and update the view template so it has a two column table, with column headers "Roman Numeral" and "Spanish", and data like "II", "dos".

## NBAPI 
1. Make a rails app that lets users see upcoming nba games (by using that sports data api to get games for the rest of the season), and predict who will win.
2. Let users add (fake) money to their accounts, and place bets on the games
3. Use the api to update games every hour, and update the status of the bets
4. Make sure users can't place bets after games start
5. Let users make comments about each game
6. Show a user leaderboard based on number of correctly predicted games

## Tic-Tac-jQuery-Rails
1. Make an HTML page that uses jQuery to let users play tic-tac-toe.
The page should show the board, made of appropriate HTML elements. When you click on a space, it should get filled in with either X or O as appropriate.
2. Wrap the page in a Rails app.
3. Let the user choose which should go first, X or O.
4. Let the user choose whether to play another person or against the computer. If the computer is the opponent, add a button to play the computer's next move. The computer should go in an empty space.
5. Make the computer a bit smarter, so it tries to win.

## Cards on Rails
1. Make a Rails app that has a database filled (seeded) with playing cards. Each card should have a suit and a face value. Put the image files we used for the cards into the app/assets/images directory.
2. Make a page that lists all the cards with their suits and face values. Each item in the list should be a link to a separate page that displays the card's suit, face value, and image.
3. Use TDD to rewrite either blackjack or 3-card poker.
4. Add users to the app
5. Let users play and make bets on the game you wrote

## Error App
Keep building away. Some enhancements: 
* Make an error editable by the person who added it
* Let users make comments on an error
  * Make comments editable by the person who added it
* Let users upvote/downvote errors
  * Let users upvote/downvote comments
  * Make voting happen by jQuery
  * Make errors sortable by upvote or created_at
* Add categories to errors
  * Display errors by category
  * Let errors have (and belong to) multiple categories
* Let user who posted error mark it as complete or incomplete
* Deploy your version of the app to Heroku
* Have the app send an email to a user when someone posts a comment on one of that user's errors 
