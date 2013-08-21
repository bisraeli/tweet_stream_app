class Tweet < ActiveRecord::Base
  belongs_to :user
  attr_accessible :twitter_tweet_id,
                  :user_id,
                  :tweeted_on,
                  :text,
                  :source,
                  :truncated,
                  :in_reply_to_status_id,
                  :in_reply_to_user_id,
                  :in_reply_to_screen_name,
                  :geo,
                  :place,
                  :retweet_count,
                  :favorite_count,
                  :favorited,
                  :retweeted,
                  :filter_level,
                  :lang
end
