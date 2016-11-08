class CreateTourPackages < ActiveRecord::Migration
  def change
    create_table :tour_packages do |t|
      t.string :package_name
      t.string :price
      t.text :detail
      t.text :duration

      t.timestamps null: false
    end
  end
end
