class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.integer :user_id
      t.integer :language_id
      t.timestamps
    end
  end
end
