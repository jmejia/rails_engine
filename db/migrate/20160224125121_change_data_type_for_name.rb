class ChangeDataTypeForName < ActiveRecord::Migration
  def up
    enable_extension("citext")
    change_column :merchants, :name, :citext
  end
end
