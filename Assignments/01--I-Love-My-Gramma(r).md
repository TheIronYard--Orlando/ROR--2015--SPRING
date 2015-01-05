# 01 -- I Love My Gramma(r)

## Description

You're going to learn to write Ruby. Eventually, and sooner than you think, you'll be writing terrific expressive evocative programs. Perhaps like the great Ruby coders of the past what you write will involve bacon, or something Japanese. Maybe you will have ideas undreamt of by Rubyists of the past and you will write about those.

But first you're going to need to work on your grammar.

As you wrote down before lunch, you spent the morning working with four data types: numbers, strings, arrays, and hashes. Now you'll spend the afternoon practicing using those, and going back and forth between reading a tiny bit of Ruby and writing about it in English, and reading a bit of English and translating it into a tiny bit of Ruby. This is the first step in learning a new language: connecting pieces of it to a language you already know. (During this course we'll touch on at least one other computer language, and you'll pick that up more quickly because you'll be able to say, "Oh, this is like that thing we do in Ruby, only not as cool because Ruby is better." Some of you hot shots are already able to connect what you're doing in Ruby to what you know how to do in other computer languages. I'm happy that you will be able to learn Ruby more quickly, but sad that you had to spend time working in PHP.)

There's more to being a developer than knowing a computer language, though. You have to be able to share your code with the world. Or, at least at first, a small but determined cadre of your fellow Ruby enthusiasts. We're going to do that through GitHub, which is a website built to facilitate the use of `git`.  The nice people at Code School built a neat tutorial called **[Try Git](http://try.github.com)** that I want you to not only complete, but think about. It's easy to mindlessly type what the tutorial tells you (or worse, click the button to generate text. Don't click the button. Type). GitHub takes some <span title="that's not a typo, it's a pun">gitting</span> used to. If you have time, go back through the tutorial a second time and see if your understanding improves.  

Finally, it's going to be valuable to you for a bunch of reasons to get in the habit of writing down your thoughts about your experience in this class. Reflect. Ruminate. Vent. Evaluate. Etc.

## Objectives

### Learning Objectives

After completing this assignment, you should understand some things about Ruby:
* four basic data types
  * what they each represent
  * how to make them
  * what you can do with them
* some subtle syntax
  * the = vs ==
  * and 'this\n' vs "this\n"
* begin to develop an intuition for how and when to use built in methods on the basic data types

You should also begin to understand some things about `git`:
* what its purpose is
* how you can use it in your computer and through GitHub
* how you can use it to *connect* your computer *to* GitHub

### Performance Objectives

After completing this assignment, you will be able to use:
* `irb` to play with Ruby
* a text editor (Sublime Text or your favorite if you have one) to create, edit, and save a Ruby file
* the command line to execute Ruby code saved in a file
* GitHub to:
  * open a Pull Request (PR) from a branch
  * create and link an Issue to a PR
  * create and edit a file
* `git` to:
  * clone a GitHub repository to your computer
  * create a branch in a repository
  * monitor the status of files in your working directory
  * commit changes to the branch locally
  * push local changes to a GitHub remote
* Markdown to create basic HTML

### Deliverables
* [A _WIP Issue_ in the class repo](https://github.com/TheIronYard--Orlando/ROR--2015--SPRING/issues) titled `"01 -- I Love My Gramma(r) -- #{YOUR NAME}"` with:
    * checkboxes as below under _Requirements_
    * estimates for the **top-level** checkboxes
* Three pages in the wiki for _your_ `TIY-Assignments` repo:
    * reflection on the assignments (prework and this one, together on one page)
    * a page for things you've figured out
    * a page for things you're still wrestling with
* A branch in _your_ `TIY-Assignments` repo named `feature/01--I-love-my-gramma(r)` that contains:
    * a series of commits after each milestone or hour (whichever comes first), with an informative commit message for each
    * A folder called `docs/` that contains:
        * `data_types.md` -- a Markdown file containing names, definitions, methods, and uses for each data type you've learned about so far
    * A folder called `code/` that contains:
        * `day_1.rb` -- copy the file by the same name from the `code/` folder in this repository, and edit it so it can be executed to produce answers to all of today's exercises
* A Pull Request (PR) in _your_ `TIY-Assignments` repo:
    * _from_ the branch `feature/01--I-love-my-gramma(r)` (head)
    * _into_ the `master` branch (base)
    * description that links to your _WIP Issue_ in the class repo using _Github Flavored Markdown_
    * two :thumbsup: comments from peers who have reviewed your work
* Comments on your _WIP Issue_ for the following:
    * a link to your wiki (absolute URL)
    * a link to your PR using _Github Flavored Markdown_

### Requirements

#### Tasks
* [X] Create a new Issue with these tasks!
* [ ] Estimate all the top-level tasks with _T-shirt sizes_: _S_, _M_, _L_, _XL_
* [ ] Begin your wiki **(please finish this by 5 so I can use the feedback in shaping plans for tomorrow)**
    * [ ] Create a new page in your `TIY-Assignments` wiki called _Assignment Evaluation_. Write down your thoughts on the prework. Were the expectations clear? What parts really connected with you? Could any topics have been presented better? Was any of the assignment a review for you? 
    * [ ] Create a second page in your `TIY-Assignments` wiki called _Light Bulbs_. Write down things about Ruby and `git` that you understand already.
    * [ ] Create a third page in your `TIY-Assignments` wiki called _Things I Don't Get Yet_. Write down current struggles.
* [ ] Edit your wiki **(please do these as your final tasks)**
    * [ ] Add your thoughts on this assignment to the _Assignment Evaluation_ page. Same guidelines as for the prework, plus: Did the lecture feel connected to the assignment? How long did you spend on the whole thing? How long did you estimate before you started?
    * [ ] Update _Light Bulbs_ and _Things I Don't Get Yet_ to reflect how you feel at the end of the day.
* [ ] Use the Terminal in your computer to:
    * [ ] create a branch of your `TIY-Assignments` repo which you cloned from GitHub, called `feature/01--I-love-my-gramma(r)`, with `git branch`
    * [ ] switch to the branch you just created with `git checkout`
    * [ ] Create at least one file and directory as described above in _Deliverables_.
    * [ ] Add and commit your work with `git status`, `git add`, and `git commit`
    * [ ] Push your commits to Github with `git push`
    * [ ] In Github, open a PR _from_ `feature/01--I-love-my-gramma(r)` _into_ `master`
* [ ] **Data Types** -- Document what you know about the four data types we've worked with and **commit once for each data type**. I've outlined the format you should use below, using as an example a _special bonus data type_! 
    * [ ] Checkpoint: Created and committed an empty file called `docs/data_types.md`!
    * [ ] Checkpoint: Committed documentation of the first data type!
    * [ ] Checkpoint: Committed documentation of the second data type!
    * [ ] Misson Complete: Commited documentation of all data types!
* [ ] **[Try Git](http://try.github.com)**. 

### Notes

#### Data Type Documentation Format

### `Range`
* **What does it mean?** It's a sequence of numbers or letters that has no gaps in it.
* **How do you make one?** `(7..11)` #contains 7, 8, 9, 10, and 11. 
* **Why would you want one of those?** You could get every year since the Declaration of Independence was signed with `(1776..2015)`. Or if you want every day in February, that could be represented as `(1..28)`. You could even grab every letter of the alphabet with `('a'..'z')`.
* **What can you do with a range?**
```ruby
  # You can find if something is inside a range:
  (1..10).include?(5) #=> true
  (1..10).include?(300) #=> false

  # You can find out how big it is:
  (1..10).size #=> 10
  (1776..2015).size #=> 240
  
  # You can iterate over it:
  (13..19).each{|n| print "#{n} " } #=> 13 14 15 16 17 18 19
```

### Additional Resources

http://dillinger.io/ edit a Markdown file, see it as HTML at the same time
