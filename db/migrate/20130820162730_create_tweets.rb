class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer   :twitter_tweet_id, :limit => 8
      t.integer   :user_id
      t.datetime  :tweeted_on
      t.string    :text
      t.string    :source
      t.boolean   :truncated
      t.string    :in_reply_to_status_id
      t.string    :in_reply_to_user_id
      t.string    :in_reply_to_screen_name
      t.string    :geo
      t.string    :coordinates
      t.string    :place
      t.string    :contributors
      t.string    :retweet_count
      t.string    :favorite_count
      t.string    :favorited
      t.string    :retweeted
      t.string    :filter_level
      t.string    :lang

      t.timestamps
    end
  end
end