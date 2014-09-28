class AddSectorIdColumnToInvestments < ActiveRecord::Migration
  def change
    add_column :investments, :sector_id, :integer
  end
end

