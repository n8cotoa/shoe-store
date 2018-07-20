
# Shoe Store

#### Epicodus: Ruby Independent Project: Friday, July 20th, 2018

#### Nate Cottle

## Description

An application that builds a database of stores and brands of shoes.

## Setup/Contribution Requirements

1. Clone the repo
1. Run postgres
1. Build out the database outlined in my_database.sql with the following commands:
1. createdb [DATABASE NAME]
1. psql [DATABASE_NAME] < database_backup.sql
1. createdb -T [DATABASE NAME] [TEST DATABASE NAME]
1. Delete Gemfile.lock and re-run Bundle, fix any errors
1. In the root of the repo run 'ruby app.rb' in terminal

## Technologies Used

* Ruby 2.4.1
* Sinatra 2.0.3
* Postgres 10.4

## User Stories

* As a user, I want to be able to add, update, delete and list shoe stores.
* As a user, I want to be able to add and list new shoe brands. Shoe brands should include price.
* As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).
* As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
* As a user, I want to be able to associate the same brand of shoes with multiple stores.
* As a user, I want to be able to see all of the brands a store sells on the individual store page.
* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
* As a user, I want the price to be in currency format even if I just inputted a number. (In other words, typing in 50 should be updated to $50.00.)
* As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name.
* As a user, I want all stores and brands to be unique. There shouldn't be two entries in the database for Blundstone.
* As a user, I want store and brand names to have a maximum of one hundred characters.

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Nate Cottle**
