class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.integer :language_id
      t.string :img_url
      t.string :name

      t.timestamps
    end
  end
end
