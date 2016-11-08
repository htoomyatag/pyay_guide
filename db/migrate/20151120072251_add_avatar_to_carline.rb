class AddAvatarToCarline < ActiveRecord::Migration
  def up
    add_attachment :carlines, :avatar
  end

  def down
    remove_attachment :carlines, :avatar
  end
end
