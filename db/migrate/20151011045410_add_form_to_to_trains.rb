class AddFormToToTrains < ActiveRecord::Migration
  def change
  	add_column :trains, :from, :string
    add_column :trains, :to, :string

    add_column :trains, :arrival_time, :string
    add_column :trains, :departure_time, :string
    add_column :trains, :remark, :string


  end
end
