class CreateCaptureParts < ActiveRecord::Migration[8.0]
  def change
    create_table :capture_parts do |t|
      t.text :text
      t.string :timestamp
      t.text :embeddings

      t.timestamps
    end
  end
end
