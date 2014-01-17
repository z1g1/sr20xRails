class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.string :packet
      t.text :victory
      t.text :specialRules
      t.text :tacticalTips
      t.string :map
      t.string :objective

      t.timestamps
    end
  end
end
