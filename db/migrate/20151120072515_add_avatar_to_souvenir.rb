class AddAvatarToSouvenir < ActiveRecord::Migration
    def up
    add_attachment :souvenirs, :avatar
  end

  def down
    remove_attachment :souvenirs, :avatar
  end
end
