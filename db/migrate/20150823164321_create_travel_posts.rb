class CreateTravelPosts < ActiveRecord::Migration
  def change
    create_table :travel_posts do |t|
      t.string :title
      t.string :content
      t.string :writer

      t.timestamps null: false
    end
  end
end
