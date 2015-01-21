# 10 -- MoERb

## Description

Finally, a day away from the command line.

We'll start simple(-ish) with the Ruby/HTML constructs, and build up. First thing, get images of every card to appear on an HTML page. Then using a second pair of erb/html files, get those images to appear using your Deck and Card classes. By this point you'll be tired of writing the image path, so add a `#to_img` method on Card so that instead of 

```ruby
<img src="/path/to/queen/of/hearts.svg">
```

you can just write

```ruby
<%= @queen_of_hearts.to_img %>
```

Make sure to write tests for the method first!

The next task is to write erb/html to show a single hand for three card poker. The display should include card images, captions for each image (like "four of diamonds"), and whatever other CSS tomfoolery you desire.

See if you can go beyond that to display good hands. For example, if you have a straight, the html should let you know, in a header or a blink tag or something.

The expert level on this is to write erb/html to print out a single game of three card poker, dealer vs player, with indications of good hands and an announcement of who won.

Nightmare mode is to add in betting.

We'll also want to budget a bit of time to read up on CSS. [Learn Layout](http://www.learnlayout.com) is a nice site. Read through that and see if you can incorporate what you've learned into the erb/html you wrote already.

Finally, a bit of coding practice at [Code Wars](http://www.codewars.com). The best part of those is looking through the solutions that other people came up with. 

## Objectives

### Learning Objectives

After completing this assignment, you will be pretty comfortable mixing Ruby into an HTML document. That will be very useful in the future.

### Deliverables
* [A _WIP Issue_ in the class repo](https://github.com/TheIronYard--Orlando/ROR--2015--SPRING/issues) titled `"10 -- MoERb -- #{YOUR NAME}"` with:
    * checkboxes as below under _Requirements_
    * estimates for the **top-level** checkboxes
* Update _your_ `TIY-Assignments` repo wiki:
    * _Add_ your thoughts on today's assignment to the existing reflections page
    * _Edit_ the lightbulbs and struggles pages
* A branch in _your_ `TIY-Assignments` repo _from master_ named `feature/10--MoERb` that contains:
    * a series of commits after each milestone or hour (whichever comes first), with an informative commit message for each
    * an `html/` folder with matching erb and html files for:
      * printing an image of every card
      * printing all the images using Deck and Card
      * printing all the images using the new #to_img method you wrote on Card
      * printing a single hand of three card poker
      * printing and describing a single hand ("Jack high", "Pair", "Straight", etc)
      * printing hands for a player and dealer, describing each, and saying who won
* Solve at least the following problems on codewars:
  * http://www.codewars.com/kata/welcome-to-the-city
  * http://www.codewars.com/kata/convert-boolean-values-to-strings-yes-or-no
  * http://www.codewars.com/kata/grader
* A Pull Request (PR) in _your_ `TIY-Assignments` repo:
    * _from_ the branch `feature/10--MoERb` (head)
    * _into_ the `master` branch (base)
    * description that links to your _WIP Issue_ in the class repo using _Github Flavored Markdown_
    * two :thumbsup: comments from peers who have reviewed your work
* Comments on your _WIP Issue_ for the following:
    * a link to your wiki (absolute URL)
    * a link to your PR using _Github Flavored Markdown_
### Requirements

#### Tasks

You know the drill...

