class AddAvailabilityToBuddy < ActiveRecord::Migration[7.0]
  def change
    add_column :buddies, :availability, :boolean
  end
end
