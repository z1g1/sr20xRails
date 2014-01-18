class CreateCasters < ActiveRecord::Migration
  def change
    create_table :casters do |t|
      t.string :title
      t.references :faction

      t.timestamps
    end
    add_index :casters, :faction_id
  end
end
