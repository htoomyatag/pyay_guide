class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website
      t.string :latitude
      t.string :longitude
      t.string :fromtownship
      t.string :totownship
      t.string :departuretime

      t.timestamps null: false
    end
  end
end
