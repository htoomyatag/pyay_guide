class AddAvatarToTrain < ActiveRecord::Migration
  def up
    add_attachment :trains, :avatar
  end

  def down
    remove_attachment :trains, :avatar
  end
end
