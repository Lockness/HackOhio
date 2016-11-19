class AddAccessibilityToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :door_width, :integer
    add_column :locations, :bathroom_accessibility, :boolean
    add_column :locations, :table_heights, :integer
    add_column :locations, :additional_comments, :string
  end
end
