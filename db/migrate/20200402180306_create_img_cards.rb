class CreateImgCards < ActiveRecord::Migration[6.0]
  def change
    create_table :img_cards do |t|
      t.string :img_url
      t.integer :word_card_id

      t.timestamps
    end
  end
end
