class CreateBuddies < ActiveRecord::Migration[7.0]
  def change
    create_table :buddies do |t|
      t.text :description
      t.string :category
      t.string :city
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
