class CreateCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|
      t.references :user, foreign_key: true
      t.references :debtor, foreign_key: { to_table: :users }
      t.date :captured_on
      t.decimal :amount, precision: 8, scale: 2
      t.references :card, foreign_key: true

      t.timestamps
    end
  end
end
