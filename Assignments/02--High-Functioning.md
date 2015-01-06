# 02 -- High Functioning

## Description

That git is a real shot in the tucchus, isn't it? We'll play with that some more.

Today's big new things were functions and methods. A function is just a way to manipulate data. A method is a function that is attached to an object of some kind, like a number or a string or what have you. The data that gets manipulated by a function has to be given to it as one or more arguments. A method can have arguments as well, and it can access some of the data in its object as well.

Inside a function or method you can have other functions and methods, and data types. You can also have control structures, like `if` and `else` and `while` and `until`, and comparisons like `<`, `>`, or `==` (which is *not* the same as `=`), as well as logical operators like `&&` and `||`. [That's about it.](https://www.youtube.com/watch?v=WhfK98f5S00) 

For today's assignment, you will write a function that takes the English word for a number and turns it into an actual number. For example:
terrible_method_name("one") #=> 1
terrible_method_name("twelve") #=> 12

Your function should (a) have a better name than that, and (b) work for any integer up to at least 100. 1_000_000_000 would be better.

Start by writing expectations for some return values given some inputs. Then write out in English the rules for how numbers are named. Then translate your English into Ruby. Include some expectations in your file so you know it works. Save your work in a file called *some_expressive_name.rb*.

## Objectives

### Learning Objectives

After completing this assignment, you will have a better understanding of some aspects of `git`:
* what branching represents
* the relationship between a branch in `git` and a folder 
* what a remote is
* what the arguments to git functions mean

You will also know a lot more about Ruby:
* how to write a function or a method
  * including arguments
  * how to control flow
  * how to determine a return value
* how to set precise expectations in English for your code
  * what it should return
  * what its internal logic should accomplish

### Performance Objectives
After completing this assignment, you will be able to:
* write and execute code that can solve interesting problems
* use `git` to clone a repository, perform work in a branch, and merge your local changes into the original repository

### Deliverables
* [A _WIP Issue_ in the class repo](https://github.com/TheIronYard--Orlando/ROR--2015--SPRING/issues) titled `"02 -- High Functioning -- #{YOUR NAME}"` with:
    * checkboxes as below under _Requirements_
    * estimates for the **top-level** checkboxes
* Update _your_ `TIY-Assignments` repo wiki:
    * _Add_ your thoughts on today's assignment to the existing reflections page
    * _Edit_ the lightbulbs and struggles pages
* A branch in _your_ `TIY-Assignments` repo named `feature/02--High-Functioning` that contains:
    * a series of commits after each milestone or hour (whichever comes first), with an informative commit message for each
    * A folder called `docs/` that contains:
        * `data_types.md` -- a Markdown file containing names, definitions, methods, and uses for each data type you've learned about so far
    * A folder called `code/` that contains:
        * `some_expressive_name.rb`
* A Pull Request (PR) in _your_ `TIY-Assignments` repo:
    * _from_ the branch `feature/02--High-Functioning` (head)
    * _into_ the `master` branch (base)
    * description that links to your _WIP Issue_ in the class repo using _Github Flavored Markdown_
    * two :thumbsup: comments from peers who have reviewed your work
* Comments on your _WIP Issue_ for the following:
    * a link to your wiki (absolute URL)
    * a link to your PR using _Github Flavored Markdown_
    
### Requirements

#### Tasks
* [ ] Estimate all the top-level tasks with _T-shirt sizes_: _S_, _M_, _L_, _XL_
* [ ] Work through some introductory lessons at [Learn Git Branching](http://pcottle.github.io/learnGitBranching/) (1-3 of the Introductory Sequence on the Main menu, and 1-4 of Push & Pull on the Remote menu). There's a lot of animated branching diagrams in that tutorial, so you'll have to concentrate on using them to help you learn instead of just looking at them. Like we do during lecture, try to imagine what will happen next for each step.
* [ ] End of lab wiki edit **(please finish this by 5 so I can use the feedback in shaping plans for tomorrow)**
    * [ ] Add your thoughts on this assignment to the _Assignment Evaluation_ page. 
    * [ ] Update _Light Bulbs_ and _Things I Don't Get Yet_ to reflect how you feel at the end of lab.
* [ ] End of day wiki edit **(please do these as your final tasks)**
    * [ ] Add your thoughts on this assignment to the _Assignment Evaluation_ page. 
    * [ ] Update _Light Bulbs_ and _Things I Don't Get Yet_ to reflect how you feel at the end of the day.
* [ ] Use the Terminal in your computer to:
    * [ ] create a branch of *your* `TIY-Assignments` repo called `feature/02--high-functioning`
    * [ ] switch to the new branch
    * [ ] Create at least one file and directory as described above in _Deliverables_.
    * [ ] Add and commit your work every hour or at every breakthrough (whichever comes first)
    * [ ] Push your commits to Github
    * [ ] In Github, open a PR _from_ `feature/02--high-functioning` _into_ `master`  
    
### Notes
If you haven't completed all of the tasks from yesterday, do so.
