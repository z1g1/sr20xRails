class CreateFactions < ActiveRecord::Migration
  def change
    create_table :factions do |t|
      t.string :title
      t.string :system
      t.string :logo

      t.timestamps
    end
  end
end
