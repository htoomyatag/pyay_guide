class AddAvatarToSimpletable < ActiveRecord::Migration
  def up
    add_attachment :simple_tables, :avatar1
    add_attachment :simple_tables, :avatar2
    add_attachment :simple_tables, :avatar3
    add_attachment :simple_tables, :avatar4
    add_attachment :simple_tables, :avatar5
  end

  def down
    remove_attachment :simple_tables, :avatar1
    remove_attachment :simple_tables, :avatar2
    remove_attachment :simple_tables, :avatar3
    remove_attachment :simple_tables, :avatar4
    remove_attachment :simple_tables, :avatar5
  end
end
