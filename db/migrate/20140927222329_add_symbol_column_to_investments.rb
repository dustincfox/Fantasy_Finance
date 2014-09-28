class AddSymbolColumnToInvestments < ActiveRecord::Migration
  def change
    add_column :investments, :symbol, :string
  end
end
