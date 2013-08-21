class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer   :twitter_user_id, :limit => 8
      t.string    :name
      t.string    :screen_name
      t.string    :location
      t.string    :url
      t.string    :description
      t.boolean   :protected
      t.integer   :followers_count
      t.integer   :friends_count
      t.integer   :listed_count
      t.datetime  :created_at
      t.integer   :favourites_count
      t.integer   :utc_offset
      t.string    :time_zone
      t.boolean   :geo_enabled
      t.boolean   :verified
      t.integer   :statuses_count
      t.string    :lang
      t.boolean   :contributors_enabled
      t.boolean   :is_translator

      t.timestamps
    end
  end
end


