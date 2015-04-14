Flipper!
=======

Flipper is a little Twitter clone that will allow users to flip (post messages) to a public stream.
People are always venting on Twitter, so my version is called Flipper: a place for people to mindlessly Flip out. 

Features:
  - In order to use flipper as a maker I want to sign up to the service
  - In order to user flipper as a maker I want to log in
  - In order to avoid others to use my account as a maker I want to log out
  - In order to let people know what I am doing as a maker I want to post a message(flip) to flipper
  - In order to see what people have to say as a maker I want to see all flips in chronological order
   
Learning Objectives:
  - The aim of this task was to help get to grips with Sinatra, Datamapper and Cucumber

Technologies used
----
- Ruby
- Sinatra
- HTML5
- CSS3
- Git
- Postgresql
- Rspec
- Capybara
- Cucumber
- Bcrypt
- Datamapper

How to run it
----
```sh
git clone https://github.com/odelevingne/flipper
cd flipper/lib
shotgun -p 3000 flipper.rb
```
open localhost:3000 in your browser

How to run tests
----
```sh
cd flipper
cucumber
```
