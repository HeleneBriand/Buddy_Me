class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :status
      t.references :users, null: false, foreign_key: true
      t.references :buddies, null: false, foreign_key: true
      t.timestamps
    end
  end
end
