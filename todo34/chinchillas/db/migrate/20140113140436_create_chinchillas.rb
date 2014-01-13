class CreateChinchillas < ActiveRecord::Migration
  def change
    create_table :chinchillas do |t|
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
