class TranslateTasks < ActiveRecord::Migration
  def self.up
    Task.create_translation_table! name: :string, description: {type: :text}
  end

  def down
    Task.drop_translation_table!
  end
end
