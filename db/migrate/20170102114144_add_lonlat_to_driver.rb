class AddLonlatToDriver < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :lonlat, :st_point, geographic: true, srid: 4326
    add_index :drivers, :lonlat, using: :gist
  end
end
