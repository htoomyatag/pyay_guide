class AddAvatarToHotel < ActiveRecord::Migration
  def up
    add_attachment :hotels, :avatar1
    add_attachment :hotels, :avatar2
    add_attachment :hotels, :avatar3
    add_attachment :hotels, :avatar4
    add_attachment :hotels, :avatar5
  end

  def down
    remove_attachment :hotels, :avatar1
    remove_attachment :hotels, :avatar2
    remove_attachment :hotels, :avatar3
    remove_attachment :hotels, :avatar4
    remove_attachment :hotels, :avatar5
  end
end
