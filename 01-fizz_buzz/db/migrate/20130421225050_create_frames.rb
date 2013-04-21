class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.integer :game_id
      t.integer :position
      t.string :fizz_buzz
      t.integer :answer
      t.boolean :correct

      t.timestamps
    end
  end
end
