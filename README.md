# README

* Version --- Rails 6.1.4.1 


Advertisement Project 
This web application allows the user to publish, edit, delete (CRUD) an advertisement. This app
is helpful for thousands of job seekers to land their dream company.
There are some constraints to follow-
1. Users can't delete or edit without signup or login.
2. Users can't post Ads without signup or login.

 
In this app gem devise is used for user authentication, A user model to store information about users. 

Concepts of association is used establish connection between two Active Record models (user ,adsses )
for ex - user has many advertisement (has_many association)
   


Ruby on Rails deals with a Model/View/Controller (MVC) framework.
The Model View Controller principle divides the work of an application into three separate but closely 
cooperative subsystems.

Model
  adss.rb
  application_record.rb
  user.rb


View
adsses - Main page
devise - User Authenticity
home - root page 
layouts 


Controller

  adsses_controller.rb
  application_controller.rb
  home_controller.rb

