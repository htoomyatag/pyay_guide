class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
    	t.string :name 
		t.string :address
		t.string :phone
		t.string :website
		t.string :email


      t.timestamps null: false
    end
  end
end
