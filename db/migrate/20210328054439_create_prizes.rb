class CreatePrizes < ActiveRecord::Migration[6.1]
  def change
    create_table :prizes do |t|
      t.string :description
      t.integer :place
      t.references :drawn_ticket, null: false, foreign_key: { to_table: :tickets }
      t.references :raffle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
