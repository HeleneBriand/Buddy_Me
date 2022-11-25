class AddDatesToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :start_date, :date
    add_column :events, :end_date, :date
  end
end
