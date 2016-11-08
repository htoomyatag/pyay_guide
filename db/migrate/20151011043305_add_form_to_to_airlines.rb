class AddFormToToAirlines < ActiveRecord::Migration
  def change
  	add_column :airlines, :from, :string
    add_column :airlines, :to, :string

  end
end
