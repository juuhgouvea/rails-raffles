class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :photo
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end
