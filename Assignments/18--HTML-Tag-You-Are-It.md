# 18 -- HTML Tag, You're It

## Description

We have a lot of text just hanging out in the restaurant review app at this point. It should be wrapped in some tags for better semantics (that is, so the structure of the HTML document matches the content better).

I gave a lot of reading material through HipChat:
* https://developer.mozilla.org/en-US/docs/Web/HTML/Forms_in_HTML
* https://developer.mozilla.org/en-US/docs/Web/HTML/Forms
* https://developer.mozilla.org/en-US/docs/Web/HTML/Element
* https://developer.mozilla.org/en-US/docs/Web/HTML/Block-level_elements

I also posted a list of all the tags available in HTML5. You are now in position to use some of those tags to tidy up the views in the app.

Wrap all the tags inside each form in a `fieldset` tag, and add a `legend` to the fieldset. Set a placeholder on the restaurant phone number field to indicate what the data entered there should look like.

Each individual review on the restaurant page should be wrapped in a tag that reflects the fact that a review is a self-contained fragment that could be reused in another context. The data in each review - comment: "YUMM", rating: 4, etc - is a set of key-value pairs. There are tags for that format.

Add a footer that will appear on each page of the site, with the site name and copyright information. 

Change the list on the restaurants page into a table, with headers for restaurant name, address, and number of reviews. Represent each restaurant in its own row in the table. 

## Objectives

### Learning Objectives

You will throw a huge amount of technical data about HTML tags and attributes at your brain, and some of it will stick.

### Deliverables

* A more semantically correct restaurant review site, with restaurants, users, and reviews of restaurants posted by (or at least attributed to) users. 
* Update your wiki afterwards 
 

#### Tasks
