class AddMiddleNameToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :middle_name, :string
  end
end
