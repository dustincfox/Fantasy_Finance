class RemoveSectorIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :sector_id, :integer
  end
end
