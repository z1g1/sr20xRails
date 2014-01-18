class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.text :body
      t.string :size
      t.references :faction
      t.references :caster
      t.references :user

      t.timestamps
    end
    add_index :lists, :faction_id
    add_index :lists, :caster_id
    add_index :lists, :user_id
  end
end
