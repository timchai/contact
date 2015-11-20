class AddLatitudeLongitudeToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :latitude, :float
    add_column :infos, :longitude, :float
  end
end
