# Ruby voting system

## Description:

A RESTful web application which allows the user to register and record the votes of participants in a "pub of the year" competition.

Project created while studying at CodeClan, Edinburgh.  

## Usage:

* User can register to vote from a menu of eligible pubs  
* Voters cannot vote for themselves nor vote more than once
* Voters can vote for up to 3 pubs, but no more.
* All data is persisted on SQL database.

## Installing and Running App

### Requirements
* Ruby with Sinatra and PG Gems.
* PostgreSQL - install instructions [here](https://www.postgresql.org/docs/9.6/static/tutorial-install.html)

1. Clone repository
2. create psql database using `psql` then `create database poty`
3. create database tables using `psql -d poty -f db/poty.sql` from root project folder
4. add seed data using `ruby db/seed.rb` from root project folder
5. start server using `ruby master_controller.rb` from root project folder
6. application will run on localhost:4567

## Built With

Ruby.  
Sinatra.  
SQL (Posgres).  
HTML.  
CSS.   