class AddAvatarToBuses < ActiveRecord::Migration
  def up
    add_attachment :buses, :avatar1
    add_attachment :buses, :avatar2
    add_attachment :buses, :avatar3
    add_attachment :buses, :avatar4
    add_attachment :buses, :avatar5
  end

  def down
    remove_attachment :buses, :avatar1
    remove_attachment :buses, :avatar2
    remove_attachment :buses, :avatar3
    remove_attachment :buses, :avatar4
    remove_attachment :buses, :avatar5
  end
end
