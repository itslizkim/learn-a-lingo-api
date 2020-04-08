class CreateWordCards < ActiveRecord::Migration[6.0]
  def change
    create_table :word_cards do |t|
      t.string :word
      t.integer :game_id

      t.timestamps
    end
  end
end
