class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :username
      t.string :rate_number
      t.string :rate_name
      t.string :rate_category

      t.timestamps null: false
    end
  end
end
