class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :address
      t.string :link
      t.string :products
      t.string :schedule

      t.timestamps null: false
    end
  end
end
