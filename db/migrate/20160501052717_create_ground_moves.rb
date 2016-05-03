class CreateGroundMoves < ActiveRecord::Migration
  def change
    create_table :ground_moves do |t|
      t.integer :character_id
      t.string :name
      t.integer :hitbox_active_start
      t.integer :hotbox_active_end
      t.integer :first_actionable_frame
      t.decimal :base_damage
      t.integer :angle
      t.integer :base_knockback
      t.integer :weight_based_knockback
      t.string :knock
      t.integer :back_growth
      t.string :notes
      t.decimal :patch
      t.integer :variation_of

      t.timestamps null: false
    end
  end
end
