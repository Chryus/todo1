class CreateDustBaths < ActiveRecord::Migration
  def change
    create_table :dust_baths do |t|
      t.integer :time
      t.timestamps
    end
  end
end
