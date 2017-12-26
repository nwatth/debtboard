class CreateTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :transfers do |t|
      t.references :user, foreign_key: true
      t.references :collector, foreign_key: { to_table: :users }
      t.date :captured_on
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
