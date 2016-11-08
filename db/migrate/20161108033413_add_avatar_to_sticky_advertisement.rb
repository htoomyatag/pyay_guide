class AddAvatarToStickyAdvertisement < ActiveRecord::Migration
  def up
    add_attachment :stickey_advertisements, :avatar1
    add_attachment :stickey_advertisements, :avatar2
    add_attachment :stickey_advertisements, :avatar3
    add_attachment :stickey_advertisements, :avatar4
    add_attachment :stickey_advertisements, :avatar5
  end

  def down
    remove_attachment :stickey_advertisements, :avatar1
    remove_attachment :stickey_advertisements, :avatar2
    remove_attachment :stickey_advertisements, :avatar3
    remove_attachment :stickey_advertisements, :avatar4
    remove_attachment :stickey_advertisements, :avatar5
  end
end
