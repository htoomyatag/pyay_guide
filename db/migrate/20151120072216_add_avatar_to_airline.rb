class AddAvatarToAirline < ActiveRecord::Migration
  def up
    add_attachment :airlines, :avatar
  end

  def down
    remove_attachment :airlines, :avatar
  end
end
