# 22 -- Two Do MVC

## Description

Both because it's the second bite at the apple, and because you'll be better off doing it in pairs.

We're (ok, you're) going to build the [TodoMVC project](http://todomvc.com/) in Rails. To see the app in action, click on any of the links under the "Examples" tab.

The functionality should follow the [spec](https://github.com/tastejs/todomvc/blob/master/app-spec.md#functionality), with the following exceptions:
* _Persistence_ - SQLite
* _Routing_ in Rails

You can make use of the HTML in their [template](https://github.com/tastejs/todomvc-app-template/blob/master/index.html) and the CSS in the [template for that](https://github.com/tastejs/todomvc-app-css/blob/master/index.css). Use Rails helper methods wherever possible (in the form, for example).

Remove some lines from the HTML template. Towards the bottom are two lines that start
```
<script src=
```
-they won't break anything other than causing lots of complaining in the log file. Likewise there's a line towards the top of the template that starts
```
<link rel="stylesheet" href="node_modules/
```
which won't break anything other than causing lots of complaints in the log file.

Start the project from the templates. Don't reuse what you built last weekend. Recreate your thought process.

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
