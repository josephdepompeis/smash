class CreateGrabs < ActiveRecord::Migration
  def change
    create_table :grabs do |t|
      t.integer :character_id
      t.string :name
      t.integer :hitbox_active_start
      t.integer :hitbox_active_end
      t.integer :first_actionable_frame
      t.integer :variation_of

      t.timestamps null: false
    end
  end
end
