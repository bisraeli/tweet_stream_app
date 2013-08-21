namespace :tweet_stream do

  desc "add tweets"
  task :add_tweets => :environment do
    @statuses = 1
    @max = 1_000_000
    TweetStream::Client.new.sample do |status, client|
      binding.pry
      tweet = Tweet.create(
                :twitter_tweet_id => status.id,
                :tweeted_on => status.created_at,
                :text => status.text,
                :source => status.source,
                :truncated => status.truncated,
                :in_reply_to_status_id => status.in_reply_to_status_id,
                :in_reply_to_user_id => status.in_reply_to_user_id,
                :in_reply_to_screen_name => status.in_reply_to_screen_name,
                :geo => status.geo,
                :place => status.place,
                :retweet_count => status.retweet_count,
                :favorite_count => status.favorite_count,
                :favorited => status.favorited,
                :retweeted => status.retweeted,
                :filter_level => status.filter_level,
                :lang => status.lang)
      user = User.find_or_create_by_twitter_user_id(
                twitter_user_id: status.user.id,
                :name => status.user.name,
                :screen_name => status.user.screen_name,
                :location => status.user.location,
                :url => status.user.url,
                :description => status.user.description,
                :followers_count => status.user.followers_count,
                :friends_count => status.user.friends_count,
                :listed_count => status.user.listed_count,
                :created_at => status.user.created_at,
                :favourites_count => status.user.favourites_count,
                :utc_offset => status.user.utc_offset,
                :time_zone => status.user.time_zone,
                :geo_enabled => status.user.geo_enabled,
                :verified => status.user.verified,
                :statuses_count => status.user.statuses_count,
                :lang => status.user.lang,
                :contributors_enabled => status.user.contributors_enabled,
                :is_translator => status.user.is_translator)
      user.tweets << tweet
      client.stop if @statuses >= @max
      @statuses += 1
    end
  end

  desc "count tweets and users in db"
  task :count => :environment do
    puts Tweet.count
    puts User.count
  end

  desc "clear out tweets and users"
  task :reset => :environment do
    Tweet.delete_all
    User.delete_all
  end
end