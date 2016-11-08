class AddAvatarToVoyage < ActiveRecord::Migration
   def up
    add_attachment :voyages, :avatar
  end

  def down
    remove_attachment :voyages, :avatar
  end
end
