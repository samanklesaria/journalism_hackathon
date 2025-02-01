class CreateMeetings < ActiveRecord::Migration[8.0]
  def change
    create_table :meetings do |t|
      t.string :title
      t.datetime :starts_at
      t.text :summary

      t.timestamps
    end
  end
end
