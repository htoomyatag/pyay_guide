class AddFieeldsToVoyages < ActiveRecord::Migration
  def change
  	add_column :voyages, :from, :string
    add_column :voyages, :to, :string
    add_column :voyages, :arrival_time, :string
    add_column :voyages, :departure_time, :string
    add_column :voyages, :days, :string
    add_column :voyages, :remark, :text
    
  end
end
