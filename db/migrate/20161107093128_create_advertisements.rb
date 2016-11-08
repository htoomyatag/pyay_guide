class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :category
      t.string :shop_id
      t.string :category

      t.timestamps null: false
    end
  end
end
