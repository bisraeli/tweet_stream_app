# Tweet Stream

# Type
Lab/Quiz

## Estimated Time
3 hour

## Prerequisites
- Ruby
- Rails
- Postgres
- Rake Tasks
- Rails Environment
- Environmental Variables
- ActiveRecord
- Twitter API
- Pry

## Summary
Students create a custom rake task to populate their database with tweets and
users. This is useful lab/lead-in for later demonstrations of database
optimization using indexes.

## How to lead
Have students work in groups of 1 to 3. If students are unfamiliar with Rake
tasks the can begin by creating simple ones to print strings or count objects in
their databases.

1. Create a new Rails App with Tweets and Users

2. Write a rake task that will insert __1 million__ tweets and their metadata
into your __local__ postgres database.

3. Store the Twitter Usernames in the User table.
4. Have students use pry to figure ou

# Resources

- [Tweet Stream](https://github.com/tweetstream/tweetstream)
- [Twitter Dev](https://dev.twitter.com/)
- [Rake Tasks Railscast](http://railscasts.com/episodes/66-custom-rake-tasks)
- [Rake Task Tutorial](http://jasonseifer.com/2010/04/06/rake-tutorial)
- [Generate Rake Tasks](http://railsguides.net/2012/03/14/how-to-generate-rake-task/)
- [Setting up Postgres with Rails](http://robdodson.me/blog/2012/04/27/how-to-setup-postgresql-for-rails-and-heroku/)
- [Postgres App](http://postgresapp.com/)

## Postmortem
- Pulling 1_000_000 tweets can take awhile. This may need to be lowered.
- Students need to be more familiar with creating rake tasks, setting up
initializers, and using postgres in development.
- Would like to get this down to 1 hour.
- Students need to be directed into groups.
- Students need more specific goals on what meta data to pull in.

## Student Misunderstandings
- Unfamiliar with database.yml and rake db:create
- We've primarily only used rake tasks in relation to databases, so some
students assumed a rake task would by default talk to the database.
- Rake task file extensions are .rake not .rb
- To store twitter_ids students will need to use big_int. This means setting
your db column to :limit => 8

## Original Source
[WDI NYC JUN 13](https://www.evernote.com/shard/s76/sh/7ba96b47-066a-4e45-bd44-cc860aba3422/5da1584a0e5d5d30e58bb74b82810288)