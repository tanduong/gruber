class AddIndexToDrivers < ActiveRecord::Migration[5.0]
  def change
    add_index :drivers, :state
  end
end
