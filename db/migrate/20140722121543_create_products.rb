class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :ProductName
      t.integer :Price
      t.text :Description

      t.timestamps
    end
  end
end
