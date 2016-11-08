class CreateSouvenirs < ActiveRecord::Migration
  def change
    create_table :souvenirs do |t|
    	 t.string :region
 	 	 t.string :township
		 t.string :name
		 t.string :address
		 t.string :phone
		 t.string :website
		 t.string :email
		 t.string :category 

      t.timestamps null: false
    end
  end
end
