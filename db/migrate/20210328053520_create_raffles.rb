class CreateRaffles < ActiveRecord::Migration[6.1]
  def change
    create_table :raffles do |t|
      t.string :title
      t.text :description
      t.datetime :initial_draw_date
      t.datetime :start_sale_date
      t.datetime :end_sale_date
      t.datetime :draw_date
      t.float :ticket_price
      t.references :user, null: false, foreign_key: true
      t.references :kind, null: false, foreign_key: true

      t.timestamps
    end
  end
end
