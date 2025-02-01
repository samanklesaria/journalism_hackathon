class CreateCaptures < ActiveRecord::Migration[8.0]
  def change
    create_table :captures do |t|
      t.string :title
      t.text :summary
      t.string :url

      t.timestamps
    end
  end
end
