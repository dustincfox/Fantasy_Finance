class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :portfolio_id
      t.integer :user_id
      t.integer :category_id
      t.string  :name

      t.timestamps
    end
  end
end
