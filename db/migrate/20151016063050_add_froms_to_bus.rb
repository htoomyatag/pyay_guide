class AddFromsToBus < ActiveRecord::Migration
 
  def change
  	add_column :carlines, :from, :string
    add_column :carlines, :to, :string
    add_column :carlines, :arrival_time, :string
    add_column :carlines, :departure_time, :string
    add_column :carlines, :days, :string
  end

 
end
