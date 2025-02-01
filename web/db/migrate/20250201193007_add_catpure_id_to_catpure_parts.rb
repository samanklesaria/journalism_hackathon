class AddCatpureIdToCatpureParts < ActiveRecord::Migration[8.0]
  def change
    add_reference :capture_parts, :capture, foreign_key: true, index: true
  end
end
