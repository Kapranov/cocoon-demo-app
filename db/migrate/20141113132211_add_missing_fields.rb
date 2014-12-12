class AddMissingFields < ActiveRecord::Migration
  def self.up
    add_column :projects, :description, :string
  end

  def self.down
  end
end
