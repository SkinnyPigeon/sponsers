class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.references :player, index: true, foreign_key: true
      t.references :sponser, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
