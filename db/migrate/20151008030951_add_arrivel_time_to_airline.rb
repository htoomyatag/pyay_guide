class AddArrivelTimeToAirline < ActiveRecord::Migration


  def change
    add_column :airlines, :arrival_time, :string
    add_column :airlines, :departure_time, :string
    add_column :airlines, :days, :string
    add_column :airlines, :flight_number, :string
  end
end
