class AddChinchillaIdToDustBaths < ActiveRecord::Migration
  def change
    add_column :dust_baths, :chinchilla_id, :integer
  end
end

