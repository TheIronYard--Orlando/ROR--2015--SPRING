# 20 -- AJAX, or maybe AYAX

### It might be a soft 'j'. I'm not sure but apparently you just communicate asynchronously with the server through XMLHttpRequest objects for an extended period of time. It's supposed to be wild.

## Description

Return to the restaurant review app and make the following changes:

* Hide the form for adding a new review, and make it appear in response to clicking on a link that says "Add a review".
* When a new review is added, have it appear at top of the review list rather than generating a whole new page.
* Reviews should include links to edit or delete them, but only when they are viewed by the user who created them. Place the edit link and delete button for a review in the same `<p>` tag as the "Posted by" information. If a review is deleted, remove it from the list without generating a whole new page. 

### Expert level

* Have the edit link and delete button present in a user's reviews but be invisible unless the user is hovering over the containing `<p>` tag.
* Remove the delete button for reviews posted more than an hour ago.

### Nightmare mode

* Have the form for editing a review appear right underneath the review. When the form is submitted, replace the old version of the review with the new one, and add a visible signal that a change occurred.
* Include a link to let a user cancel the edit before submitting it.


## Objectives

### Learning Objectives

You will learn a little about Javascript, most of which will be discovering that you already know some things about Javascript because you know some things about Ruby.

### Deliverables

* Update your `restaurant_review` app
* Update your wiki afterwards 
 
#### Tasks
