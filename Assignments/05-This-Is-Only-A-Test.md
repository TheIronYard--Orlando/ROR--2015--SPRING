# 05 -- This Is Only A Test

## Description

We need some repetitions on the basics, and the basics are everything we've done so far.

Go to [Ruby Koans](http://rubykoans.com) and download the koans. Follow the instructions the site gives you, and work through the end of the *about_symbols.rb* file.

That will give you practice on test assertions and method calls.

I also want you to *delete* your `card.rb` and `card_test.rb` files and rewrite them, incrementally, committing with good messages as you go.
This to exercise the cycle of making a test-seeing it's broken-writing code to fix it. Don't try to write both files from memory in one fell swoop.

To get practice on being a developer, you'll take my English-language requirements to model a wolfpack and go through the same iterative cycle.
This is the hardest part of the homework. I think I'd do this with an instructor and TA in the room.

### The Wolfpack

A wolfpack is a group of wolves. A wolf has a name and an age. The leader of the wolfpack is the oldest wolf.
All wolves are submissive to older wolves and dominant over younger wolves. 

A wolf can join a pack. If a wolf joins a pack and becomes leader, the pack throws out the former leader.

A wolf can howl. It howls louder if it's older than 3 than if it's younger.
If you call out the name of a wolf to its pack, that wolf will howl.

A wolfpack can take down different sized things depending on how big it is. 
* A pack of 2 wolves can hunt a gazelle.
* A pack of 5 wolves can get a water buffalo.
* A pack of 30 wolves can eat a rhinoceros.

I used a lot of synonyms there in the hunting section. You don't need methods for all of them.


example method uses:

```ruby
old_wolf.submissive_to?(young_wolf) #=> false
old_wolf.dominant_over?(young_wolf) #=> true
pack_of_2_wolves.can_hunt?(:gazelle)   #=> true
pack_of_10_wolves.can_hunt?(:gazelle) #=> true

wolf.howl #=> 'howwwwl' 
```
### End of Wolfpack

It would be good if you would take what you learn from the above and use it to start on a Deck model for blackjack, because we're not done with blackjack. Ohhhhh, no.

Also and as always, you'll practice using `git`, and branching, committing, pushing, using GitHub to make an issue and a pull request, link to the pull request from the issue, etc.
## Objectives

### Learning Objectives

This is more practice than learning. Solidify concepts you've seen already.

### Performance Objectives

After completing this assignment, you will be able to:
* use `git` in your sleep, which given how much you people rest over the weekend is a good thing
* get tests of built-in methods to pass
* translate English language description of a system into Ruby tests and code

### Deliverables
* [A _WIP Issue_ in the class repo](https://github.com/TheIronYard--Orlando/ROR--2015--SPRING/issues) titled `"05 -- This Is Only A Test -- #{YOUR NAME}"` with:
    * checkboxes as below under _Requirements_
    * estimates for the **top-level** checkboxes
* Update _your_ `TIY-Assignments` repo wiki:
    * _Add_ your thoughts on today's assignment to the existing reflections page
    * _Edit_ the lightbulbs and struggles pages
* A branch in _your_ `TIY-Assignments` repo named `feature/05--This-Is-Only-A-Test` that contains:
    * a series of commits after each milestone or hour (whichever comes first), with an informative commit message for each
    * A folder called `code/` that contains:
        * `wolfpack_test.rb`
        * `wolf_test.rb`
        * `wolfpack.rb`
        * `wolf.rb`
        * `card.rb`
        * `card_test.rb`
    * The wolf and wolfpack should be capable of all the behaviors I outline in the description.
* A Pull Request (PR) in _your_ `TIY-Assignments` repo:
    * _from_ the branch `feature/05--this-is-only-a-test` (head)
    * _into_ the `master` branch (base)
    * description that links to your _WIP Issue_ in the class repo using _Github Flavored Markdown_
    * two :thumbsup: comments from peers who have reviewed your work
* Comments on your _WIP Issue_ for the following:
    * a link to your wiki (absolute URL)
    * a link to your PR using _Github Flavored Markdown_
    
### Requirements

#### Tasks
* [ ] Estimate all the top-level tasks with _T-shirt sizes_: _S_, _M_, _L_, _XL_
* [ ] Sort these tasks into the order in which you'll begin them
* [ ] Download the [Ruby Koans](http://rubykoans.com) into your repo and work through them up to the end of the about_symbols.rb. 
* [ ] End of lab wiki edit **(please finish this by 5 so I can use the feedback in shaping plans for tomorrow)**
    * [ ] Add your thoughts on this assignment to the _Assignment Evaluation_ page. 
    * [ ] Update _Light Bulbs_ and _Things I Don't Get Yet_ to reflect how you feel at the end of lab.
* [ ] End of day wiki edit **(please do these as your final tasks)**
    * [ ] Add your thoughts on this assignment to the _Assignment Evaluation_ page. 
    * [ ] Update _Light Bulbs_ and _Things I Don't Get Yet_ to reflect how you feel at the end of the day.
* [ ] Use the Terminal in your computer to:
    * [ ] create a branch of *your* `TIY-Assignments` repo called `feature/05--this-is-only-a-test`
    * [ ] switch to the new branch
    * [ ] Create at least one file and directory as described above in _Deliverables_.
    * [ ] Add and commit your work every hour or at every breakthrough (whichever comes first)
    * [ ] Push your commits to Github
    * [ ] In Github, open a PR _from_ `feature/05--this-is-only-a-test` _into_ `master`  
