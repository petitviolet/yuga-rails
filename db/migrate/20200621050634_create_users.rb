class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :name, null: false
      t.integer :gender, null: false

      t.timestamps
    end
  end
end
