class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.references :buddy, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
