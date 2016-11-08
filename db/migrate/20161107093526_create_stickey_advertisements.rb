class CreateStickeyAdvertisements < ActiveRecord::Migration
  def change
    create_table :stickey_advertisements do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
