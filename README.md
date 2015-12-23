# Rails URL Helpers Lab 

## Objectives

1. Generate URLs using route helpers

2. Draw routes with implicit and explicit names using ```:as```

3. Draw routes with variables

4. Generate URLs using route helpers that require variables


## Instructions

In this lab you will be building out the Student management dashboard for the Flatiron School by starting to integrate the ability to link between pages. Currently four tests are currently failing and need implementation code to start passing. In order to complete this lab you will need to complete the following tasks:

* A user should be able to navigate to `/students` to view all of the students

* A user should be able to click the user's name on the `index` page and be taken to that specific user's `show` page


## Keep in mind

* Update the ```config/routes.rb``` file and utilize the ```:as``` call for the ```show``` route to create the ```student_path(:id)``` helper method.

* Make sure sure the show path is ```/student/:id``` where the ```:id``` is a route variable

* Call our Student class instance method ```to_s``` on each of students on the index page so that each student element contains their first and last name.

* On the student index page, test out all three different link_to argument options, e.g.: ```link_to "post", "/post/#{post.id}"```, ```link_to "post", post_path(post.id)```, ```link_to "post", post_path(post)```.


## Resources

* [Reading](https://github.com/learn-co-curriculum/rails-url-helpers-readme)

* [URL Helper Documentation](http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html)