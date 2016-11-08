class AddAvatarToAdvertisement < ActiveRecord::Migration
  def up
    add_attachment :advertisements, :avatar1
    add_attachment :advertisements, :avatar2
    add_attachment :advertisements, :avatar3
    add_attachment :advertisements, :avatar4
    add_attachment :advertisements, :avatar5
  end

  def down
    remove_attachment :advertisements, :avatar1
    remove_attachment :advertisements, :avatar2
    remove_attachment :advertisements, :avatar3
    remove_attachment :advertisements, :avatar4
    remove_attachment :advertisements, :avatar5
  end
end
