# == Schema Information
#
# Table name: capture_parts
#
#  capture_id :integer
#  created_at :datetime         not null
#  embeddings :text
#  id         :integer          not null, primary key
#  text       :text
#  timestamp  :string
#  updated_at :datetime         not null
#
# Indexes
#
#  index_capture_parts_on_capture_id  (capture_id)
#

class CapturePart < ApplicationRecord
  belongs_to :capture

  def start
    timestamp.match(/\[(.*?),/)[1].to_i
  end

  def snippet(term)
    matches = text.match(/(.*?)(#{term})(.*)/m)
    [
      matches[1].reverse.truncate_words(10).reverse,
      matches[2],
      matches[3].truncate_words(10)
    ]
  end
end
