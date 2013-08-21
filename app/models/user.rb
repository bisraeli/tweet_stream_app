class User < ActiveRecord::Base
  has_many :tweets
  attr_accessible :twitter_user_id,
                  :name,
                  :screen_name,
                  :location,
                  :url,
                  :description,
                  :followers_count,
                  :friends_count,
                  :listed_count,
                  :created_at,
                  :favourites_count,
                  :utc_offset,
                  :time_zone,
                  :geo_enabled,
                  :verified,
                  :statuses_count,
                  :lang,
                  :contributors_enabled,
                  :is_translator
end