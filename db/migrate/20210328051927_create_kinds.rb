class CreateKinds < ActiveRecord::Migration[6.1]
  def change
    create_table :kinds do |t|
      t.string :description
      t.integer :initial_number
      t.integer :step
      t.integer :tickets_amount

      t.timestamps
    end
  end
end
