class CreateSimpleTables < ActiveRecord::Migration
  def change
    create_table :simple_tables do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website
      t.string :latitude
      t.string :longitude
      t.string :category_id
      t.string :description
      t.string :option_phone1 
      t.string :option_phone2

      t.timestamps null: false
    end
  end
end
