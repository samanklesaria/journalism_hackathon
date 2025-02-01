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
    ix = text.downcase.index(term.downcase)
    text[(ix - 10), (ix + 10)]

    text.match(/(\W\w+.*?)(#{term})(.*?\W){,10}/m)
  end
end
