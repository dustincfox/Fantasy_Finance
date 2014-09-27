class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :portfolio_id
      t.integer :user_id
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
