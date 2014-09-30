class AddPriceandSharesColumn < ActiveRecord::Migration
  def change
    add_column :investments, :price, :float
    add_column :investments, :shares, :integer
  end
end
