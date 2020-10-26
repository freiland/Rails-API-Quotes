# Quotes Api

## A practice exercise to build a custom API using Rails, October 26, 202

### Forrest Reiland

## Description

_This application builds out a simple API from scratch using the Rails framework. Quotes and associated authors can be added, edited, or removed from the database. Additionally this project uses validations and exception handling._

## Setup/Installation Requirements

#### Install Rails
* Download Ruby [here](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/ruby-installation-and-setup) for setting up Ruby.
* Run the command `gem install rails -v 5.2.0` to install Rails onto your computer. 

#### Clone Repo and Install Bundler
* Navigate to the directory where you would like to store this repository.
* Run `git clone` command in terminal/command line with this repositorys URL included.
* Run `gem install bundler` to install Bundler to manage all gems for this repository.
* Run `bundle` or `bundle install` in your command line to download all dependencies.

#### Set Up Database

* Run `rake db:create` in the terminal. This creates a dev and test database.
* Run `rake db:schema:load` 
* Run `rake db:seed` to run the seed.rb file for the database.

#### Open in Text Editor
* Open the reposiroty in any text editor (This project was built using VS Code).
* Run `rspec` in your command line to run test specifications. 
* Running the server: Run `rails s` in the terminal. This will start a server, which you can access by entering `localhost:3000` in your browser.

## Technologies Used

* Ruby
* Rails
* Postgres/psql

### License

Copyright (c) 2020 _Forrest Reiland_

This software is licensed under the MIT license.

