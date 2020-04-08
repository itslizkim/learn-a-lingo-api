class CreateFlashCards < ActiveRecord::Migration[6.0]
  def change
    create_table :flash_cards do |t|
      t.string :word
      t.string :audio
      t.string :img_url
      t.integer :lesson_id

      t.timestamps
    end
  end
end
