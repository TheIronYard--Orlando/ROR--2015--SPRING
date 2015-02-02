# 16 -- 3 Rs - Reading, Routing, Rails 

## Description

Rails does a lot for you, but you have to know how to tell it what to do. The documentation tells you how to tell Rails. 

Last week we set up an app that had lots of models in it, but we could interact with it only through the command line. Now we'll start seeing the app in a browser like normal people do. This will involve the topics we talked about during lecture, augmented with material in the documentation. So you'll have to read the documentation.

For those who glossed over the last paragraph, the subject was the importance of reading the documentation. I would say "very", even "indispensably", when talking about the importance of reading the documentation. Which is in fact what I am talking about.

The first thing I want you to do is read the documentation. It won't all stick, but read it anyway. Specifically, read these sections of the guides:
* [The First One](http://guides.rubyonrails.org/getting_started.html)
  * Build out the app they talk about here too
* [Routing](http://guides.rubyonrails.org/routing.html) 1.1-2.2
* [Action Controller](http://guides.rubyonrails.org/action_controller_overview.html) 1-3
* [Layouts and Rendering (aka views)](http://guides.rubyonrails.org/layouts_and_rendering.html)

The second thing is to set up some routes in the football app. Make a home page in its own controller, with a nice header and a description of what the app is for, and a link to the URL "/teams". Hook that URL up to an action called \#index in an appropriately named controller. The index page should list all of the teams. Each item in the list should contain a link to a page for that team. So you'll need to have routes for all teams together, and one team by itself, each with matching controller actions and view files. There's a concept in Rails routing called "resources" which could make part of that easier. It's in the documentation. Feel free to refer back to it while you're working.

Style the site so the colors &c match step_\2_after.png in the `/html` folder in here. Add a football-themed banner image for the home page.

## Objectives

### Learning Objectives

You will begin to get comfortable routing from URLs to controller actions, using those actions to populate instance variables, and referring to those instance variables in views. You'll also get used to searching through documentation to find the bits that will help what you're doing right this second.

### Deliverables

* Update your football app to have functioning view pages as described above. 
* Update your wiki afterwards 
 

#### Tasks
