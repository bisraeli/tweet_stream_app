# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130820162740) do

  create_table "tweets", :force => true do |t|
    t.integer  "twitter_tweet_id",        :limit => 8
    t.integer  "user_id"
    t.datetime "tweeted_on"
    t.string   "text"
    t.string   "source"
    t.boolean  "truncated"
    t.string   "in_reply_to_status_id"
    t.string   "in_reply_to_user_id"
    t.string   "in_reply_to_screen_name"
    t.string   "geo"
    t.string   "coordinates"
    t.string   "place"
    t.string   "contributors"
    t.string   "retweet_count"
    t.string   "favorite_count"
    t.string   "favorited"
    t.string   "retweeted"
    t.string   "filter_level"
    t.string   "lang"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "twitter_user_id",      :limit => 8
    t.string   "name"
    t.string   "screen_name"
    t.string   "location"
    t.string   "url"
    t.string   "description"
    t.boolean  "protected"
    t.integer  "followers_count"
    t.integer  "friends_count"
    t.integer  "listed_count"
    t.string   "created_at",                        :null => false
    t.integer  "favourites_count"
    t.integer  "utc_offset"
    t.string   "time_zone"
    t.boolean  "geo_enabled"
    t.boolean  "verified"
    t.integer  "statuses_count"
    t.string   "lang"
    t.boolean  "contributors_enabled"
    t.boolean  "is_translator"
    t.datetime "updated_at",                        :null => false
  end

end
