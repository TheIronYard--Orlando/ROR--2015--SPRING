# 19 -- MVC! MVC!

## Description

We're (ok, you're) going to build the [TodoMVC project](http://todomvc.com/) in Rails. To see the app in action, click on any of the links under the "Examples" tab.

The functionality should follow the [spec](https://github.com/tastejs/todomvc/blob/master/app-spec.md#functionality), with the following exceptions:
* _New todo_ - Add a button (don't just press Enter) to create the todo, appends it to the todo list and clears the input. 
* _Mark all as complete_ - Also requires a button for this and the 'clear completed' check box
* _Item_ - Again, a button alongside the checkbox to mark as complete. You'll also need a link to edit an item. 
* _Editing_ - takes place on its own page; requires a button to save; there's no `editing` class; have a link to return to the list
* _Persistence_ - SQLite
* _Routing_ in Rails

You can make use of the HTML in their [template](https://github.com/tastejs/todomvc-app-template/blob/master/index.html) and the CSS in the [template for that](https://github.com/tastejs/todomvc-app-css/blob/master/index.css). Use Rails helper methods wherever possible (in the form, for example).

This project will have multiple levels of difficulty. 

* Level 1: Complete the functionality described above.
* Level 2: Add due dates to the tasks. Display tasks differently depending on whether they are overdue, due today, or due in the future. 
* Level 3: Add support for multiple users. Each user should be able to view and edit only his/her own task list.
* Level 4: Add support for multiple task lists for each user. Each list should get its own label, and the user should be able to navigate between all of his/her own lists.

## Objectives

### Learning Objectives

You will learn how to translate specifications expressed in writing and in a functional app into your own functional app written in Rails, and how to extend an app to do more.

### Deliverables

* A functional todo list application, in its own repository 
 

#### Tasks
