class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.integer :playing_as
      t.integer :playing_against
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
