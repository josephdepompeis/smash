class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.integer :match_id
      t.integer :order
      t.string :section
      t.string :video_url
      t.string :img_url

      t.timestamps null: false
    end
  end
end
