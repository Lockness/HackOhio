class ChangeLocationBathroom < ActiveRecord::Migration
  def change
  	change_column(:locations, :bathroom_accessibility, :string)
  end
end
