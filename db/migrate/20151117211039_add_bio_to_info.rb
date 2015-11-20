class AddBioToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :bio, :text
  end
end
